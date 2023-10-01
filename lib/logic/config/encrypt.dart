import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';

class Encrypt {
  static String encrypt(dynamic data, String pin) {
    if (pin.length > 32) {
      pin = pin.substring(0, 32);
    }
    pin = pin.padRight(32, "Y");
    final key = Key(Uint8List.fromList(pin.codeUnits.sublist(0, 32)));
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    final encrypted =
        encrypter.encryptBytes(utf8.encode(json.encode(data)), iv: iv);

    return encrypted.base64;
  }

  static dynamic decrypt(String text, String pin) {
    if (pin.length > 32) {
      pin = pin.substring(0, 32);
    }
    pin = pin.padRight(32, "Y");
    final key = Key(Uint8List.fromList(pin.codeUnits.sublist(0, 32)));
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    var decryptBytes = encrypter.decryptBytes(Encrypted.from64(text), iv: iv);
    var decryptUtf8 = utf8.decode(decryptBytes);

    final decrypted = json.decode(decryptUtf8);

    return decrypted;
  }

  static String encode({required String steg, String mask = ""}) {
    var result = mask;
    var stegBinary = _convertToBinary(steg);
    var insertionArr = _randInsert(mask.length, steg.length);
    var binaryIdx = 0;
    for (var i in insertionArr) {
      var idx = binaryIdx + i;
      if (stegBinary[binaryIdx] == "1") {
        result = _strInsert(result, '\u200d', idx);
      } else {
        result = _strInsert(result, '\u200c', idx);
      }
      binaryIdx++;
    }
    return result;
  }

  static String secureEncode({required String steg, String mask = ""}) {
    String dict = (mask + steg).trim().replaceAll(" ", "");
    String password = "";
    while (password.length < 32) {
      password += dict[Random.secure().nextInt(dict.length)];
    }

    var encrypted = encrypt(steg, password);

    var encoded = encode(steg: encrypted + password, mask: mask);

    return encoded;
  }

  static String decode(String str) {
    var chars = str.split("");
    var bytes = [];
    var buffer = "";
    for (var i = 0; i < chars.length; ++i) {
      if (chars[i] == '\u200d') {
        buffer += '1';
      } else if (chars[i] == '\u200c') {
        buffer += '0';
      }
      // Push to bytes if a byte is complete.
      if (buffer.length == 8) {
        bytes.add(buffer);
        buffer = '';
      }
    }

    for (var j = 0; j < bytes.length; ++j) {
      bytes[j] = int.parse(bytes[j], radix: 2);
    }
    for (var k = 0; k < bytes.length; ++k) {
      bytes[k] = String.fromCharCode(bytes[k]);
    }

    return bytes.join();
  }

  static String secureDecode(String str) {
    var decoded = Encrypt.decode(str);
    var keyValue = MapEntry(decoded.substring(decoded.length - 32),
        decoded.substring(0, decoded.length - 32));

    decoded = Encrypt.decrypt(keyValue.value, keyValue.key);
    return decoded;
  }

  static String getOriginalText(String str) {
    return str.replaceAll('\u200d', '').replaceAll('\u200c', '');
  }

  static List<int> _randInsert(int textLen, int stegLen) {
    List<int> indices = [];
    var numStegBits = stegLen * 8;
    while (numStegBits > 0) {
      var randIdx = (Random().nextDouble() * textLen).floor();
      indices.add(randIdx);
      --numStegBits;
    }

    indices.sort((x, y) => x - y);
    return indices;
  }

  static String _convertToBinary(String str) {
    var chars = str.split("");
    var output = [];
    for (var idx in chars) {
      var binary =
          idx.codeUnits.map((x) => x.toRadixString(2).padLeft(8, '0')).join();
      output.add(binary);
    }
    return output.join();
  }

  static String _strInsert(String orig, String insert, int idx) {
    return [orig.substring(0, idx), insert, orig.substring(idx)].join();
  }
}
