import 'package:dartz/dartz.dart';
import 'package:flutterassignment/data/datasource/local/countries/model/country_list_model.dart';
import 'package:flutterassignment/domain/core/app_error.dart';

abstract interface class CountryListRepository {
  Future<Either<AppError, CountryListModel>> countries();
}
