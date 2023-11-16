import 'package:dartz/dartz.dart';
import 'package:flutterassignment/data/datasource/local/countries/country_list_source.dart';
import 'package:flutterassignment/data/datasource/local/countries/model/country_list_model.dart';
import 'package:flutterassignment/domain/core/app_error.dart';
import 'package:flutterassignment/domain/repository/country_list_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CountryListRepository)
class CountryListRepositoryImpl implements CountryListRepository {
  final CountryListSource countryListSource;
  CountryListRepositoryImpl({required this.countryListSource});

  @override
  Future<Either<AppError, CountryListModel>> countries() async {
    try {
      var response = await countryListSource.countries();
      return Right(response);
    } catch (error) {
      return Left(AppError(error.toString()));
    }
  }
}
