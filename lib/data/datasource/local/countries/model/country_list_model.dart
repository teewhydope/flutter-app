class CountryListModel {
  CountryListModel({
    required this.countries,
  });

  final List<Country> countries;

  factory CountryListModel.fromJson(Map<String, dynamic> json) {
    return CountryListModel(
      countries: json["countries"] == null
          ? []
          : List<Country>.from(
              json["countries"]!.map((x) => Country.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "countries": countries.map((x) => x?.toJson()).toList(),
      };

  @override
  String toString() {
    return "$countries, ";
  }
}

class Country {
  Country({
    required this.name,
    required this.code,
    required this.capital,
    required this.region,
    required this.currency,
    required this.language,
    required this.flag,
    required this.diallingCode,
    required this.isoCode,
    required this.demonym,
  });

  final String? name;
  final String? code;
  final String? capital;
  final String? region;
  final Currency? currency;
  final Language? language;
  final String? flag;
  final String? diallingCode;
  final String? isoCode;
  final String? demonym;

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json["name"],
      code: json["code"],
      capital: json["capital"],
      region: json["region"],
      currency:
          json["currency"] == null ? null : Currency.fromJson(json["currency"]),
      language:
          json["language"] == null ? null : Language.fromJson(json["language"]),
      flag: json["flag"],
      diallingCode: json["dialling_code"],
      isoCode: json["isoCode"],
      demonym: json["demonym"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "capital": capital,
        "region": region,
        "currency": currency?.toJson(),
        "language": language?.toJson(),
        "flag": flag,
        "dialling_code": diallingCode,
        "isoCode": isoCode,
        "demonym": demonym,
      };

  @override
  String toString() {
    return "$name, $code, $capital, $region, $currency, $language, $flag, $diallingCode, $isoCode, $demonym, ";
  }
}

class Currency {
  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  final String? code;
  final String? name;
  final String? symbol;

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      code: json["code"],
      name: json["name"],
      symbol: json["symbol"],
    );
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
      };

  @override
  String toString() {
    return "$code, $name, $symbol, ";
  }
}

class Language {
  Language({
    required this.code,
    required this.name,
    required this.iso6392,
    required this.nativeName,
  });

  final String? code;
  final String? name;
  final String? iso6392;
  final String? nativeName;

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      code: json["code"],
      name: json["name"],
      iso6392: json["iso639_2"],
      nativeName: json["nativeName"],
    );
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "iso639_2": iso6392,
        "nativeName": nativeName,
      };

  @override
  String toString() {
    return "$code, $name, $iso6392, $nativeName, ";
  }
}
