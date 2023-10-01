class TimeSeriesData {
  String base;
  DateTime startDate;
  DateTime endDate;
  List<TimeSeriesRates> rates;

  TimeSeriesData(
      {required this.base,
      required this.startDate,
      required this.endDate,
      required this.rates});

  static TimeSeriesData fromJson(Map<String, dynamic> json) {
    return TimeSeriesData(
      base: json["base"],
      startDate: DateTime.parse(json["start_date"]),
      endDate: DateTime.parse(json["end_date"]),
      rates: (json["rates"] as Map)
          .entries
          .map((e) => TimeSeriesRates.fromJson({e.key: e.value}))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "base": base,
      "start_date": startDate,
      "end_date": endDate,
      "rates": {rates.map((e) => e.toJson())},
    };
  }
}

class TimeSeriesRates {
  DateTime date;
  List<TimeSeriesSymbols> symbols;

  TimeSeriesRates({required this.date, required this.symbols});

  static TimeSeriesRates fromJson(Map<String, dynamic> json) {
    return TimeSeriesRates(
      date: DateTime.parse(json.keys.first),
      symbols: (json.values.first as Map)
          .entries
          .map((e) => TimeSeriesSymbols.fromJson({e.key: e.value}))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      date.toString(): {
        symbols.map((e) => e.toJson()),
      }
    };
  }
}

class TimeSeriesSymbols {
  String symbol;
  double price;

  TimeSeriesSymbols({required this.symbol, required this.price});

  static TimeSeriesSymbols fromJson(Map<String, dynamic> json) {
    return TimeSeriesSymbols(symbol: json.keys.first, price: double.parse(json.values.first.toString()));
  }

  Map<String, dynamic> toJson() {
    return {
      symbol: price,
    };
  }
}
