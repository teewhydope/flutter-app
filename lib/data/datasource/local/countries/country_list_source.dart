import 'package:flutterassignment/data/datasource/local/countries/model/country_list_model.dart';

abstract interface class CountryListSource {
  Future<CountryListModel> countries();
}
