import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterassignment/data/datasource/local/countries/country_list_source.dart';
import 'package:flutterassignment/data/datasource/local/countries/model/country_list_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CountryListSource)
class CountryListLocalDataSource implements CountryListSource {
  @override
  Future<CountryListModel> countries() async {
    final String response =
        await rootBundle.loadString('assets/json/country_list.json');
    final data = await json.decode(response);
    final model = CountryListModel.fromJson(data);
    return model;
  }
}
