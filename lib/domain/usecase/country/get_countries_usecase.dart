import 'package:dartz/dartz.dart';
import 'package:flutterassignment/data/datasource/local/countries/model/country_list_model.dart';
import 'package:flutterassignment/domain/core/app_error.dart';
import 'package:flutterassignment/domain/core/no_params.dart';
import 'package:flutterassignment/domain/repository/country_list_repository.dart';
import 'package:flutterassignment/domain/core/base_usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCountriesUseCase extends UseCase<CountryListModel, NoParams> {
  final CountryListRepository repository;

  GetCountriesUseCase(this.repository);

  @override
  Future<Either<AppError, CountryListModel>> call(NoParams params) async {
    return await repository.countries();
  }
}
