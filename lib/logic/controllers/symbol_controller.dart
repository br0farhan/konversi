

import 'package:konversi/logic/controllers/base_controller.dart';
import 'package:konversi/logic/models/data/symbol_data.dart';
import 'package:konversi/logic/services/base_services.dart';

class SymbolController extends BaseController {
  Symbols? symbolsData;

  List<Symbols> symbols = [];
  SymbolController() {
    getSymbols();
    update();
  }

  Future<Symbols?> getSymbols() async {
    var resp = await BaseServices.symbols();
    symbolsData = resp.symbols;
    return resp.symbols;
  }

  Future<double> getPrice(
      {
      required String from,
      required String to,
      double ? price,
      int predicateInDays = 0,
      int timeSerieslength = 90}) async {
    predicateInDays += timeSerieslength;
    var result = await BaseServices.timeSeries(
        base: from, symbols: [to], timeSerieslength: timeSerieslength);
    if (predicateInDays == 0) {
      return result.rates.last.symbols.first.price;
    }
    double sigmaX = 0,
        sigmaY = 0,
        sigmaXY = 0,
        sigmaX2 = 0,
        averageX = 0,
        averageY = 0,
        averageY30 = 0;
    var a, b = 0.0;
    for (var i = 0; i < result.rates.length; i++) {
      sigmaX += i;
      sigmaY += result.rates[i].symbols.first.price;
      sigmaXY += i * result.rates[i].symbols.first.price;
      sigmaX2 += i * i;
      averageX = sigmaX / (i + 1);
      averageY = sigmaY / (i + 1);
      if (i == 29) {
        averageY30 = averageY;
      }
    }

    timeSerieslength++;

    b = (timeSerieslength * sigmaXY - sigmaX * sigmaY) /
        (timeSerieslength * sigmaX2 - sigmaX * sigmaX);
    a = (sigmaY - b * sigmaX) / timeSerieslength;

    var im = averageY30 / averageY;

    var Y = a + b * predicateInDays;
    var predictedY = im * Y;

    return predictedY;
  }
}
