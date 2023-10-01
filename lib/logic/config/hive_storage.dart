import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:konversi/logic/config/encrypt.dart';
import 'package:path_provider/path_provider.dart' as path_provider;


class HiveStorage {
  static bool isReady = false;
  HiveStorage() {
    _setup();
  }

  Future<void> _setup() async {
    Directory directory =
        await path_provider.getApplicationDocumentsDirectory();
    await Hive.initFlutter(directory.path);
    isReady = true;
  }

  Box? boxData;
  Future<Box> instance(String boxName) async {
    while (!isReady) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if (Hive.isBoxOpen(boxName)) {
      boxData = Hive.box(boxName);
      //debugPrint("[QoinHiveStorage][Box] box $boxName opened");
    } else {
      boxData = await Hive.openBox(boxName);
      // debugPrint("[QoinHiveStorage][OpenBox] box $boxName created");
    }
    return boxData!;
  }

  Future<void> put({required String key, required dynamic value}) async {
    var encrypted = value == null ? null : Encrypt.encrypt(value, "yustanj");
    var encryptedKey = Encrypt.encrypt(key, "yustanj");
    // if (encrypted != null) {
    //   encrypted = Encrypt.encode(steg: encrypted, mask: encryptedKey);
    // }
    await boxData?.put(encryptedKey, encrypted);
    // debugPrint(
    //     "[QoinHiveStorage][Put] box ${boxData?.name} creating key $key with value ${Encrypt.encrypt(value, "yustanj")}");
    return;
  }

  dynamic get({required String key}) {
    var encryptedKey = Encrypt.encrypt(key, "yustanj");
    var value = boxData?.get(encryptedKey) ?? boxData?.get(key);
    if (value != null) {
      // var decoded = Encrypt.decode(value);
      // if (decoded.isNotEmpty) {
      //   value = decoded;
      // }
      try {
        value = Encrypt.decrypt(value, "yustanj");
      } catch (e) {
        //debugPrint("${e.toString()} update value with encrypted");
        put(key: key, value: value);
      }

      if ((value is List)) {
        if (value.isEmpty) {
          value = null;
        } else {
          if ((value)[0].runtimeType == String) {
            value = List<String>.from(value);
          } else {
            value = List.from(value);
          }
        }
      }
    }
    // debugPrint(
    //     "[QoinHiveStorage][Get] box ${boxData?.name}, key $key with value $value");
    return value;
  }
}
