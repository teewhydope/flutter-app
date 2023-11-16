// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasource/local/countries/country_list_remote_data_source.dart'
    as _i4;
import 'data/datasource/local/countries/country_list_source.dart' as _i3;
import 'data/repository/country_list_repository_impl.dart' as _i6;
import 'domain/repository/country_list_repository.dart' as _i5;
import 'domain/usecase/country/get_countries_usecase.dart' as _i7;
import 'presentation/country/country_cubit.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CountryListSource>(
      () => _i4.CountryListLocalDataSource());
  gh.lazySingleton<_i5.CountryListRepository>(() =>
      _i6.CountryListRepositoryImpl(
          countryListSource: gh<_i3.CountryListSource>()));
  gh.lazySingleton<_i7.GetCountriesUseCase>(
      () => _i7.GetCountriesUseCase(gh<_i5.CountryListRepository>()));
  gh.factory<_i8.CountryCubit>(() =>
      _i8.CountryCubit(getCountriesUseCase: gh<_i7.GetCountriesUseCase>()));
  return getIt;
}
