import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterassignment/data/datasource/local/countries/model/country_list_model.dart';
import 'package:flutterassignment/domain/core/no_params.dart';
import 'package:flutterassignment/domain/usecase/country/get_countries_usecase.dart';
import 'package:flutterassignment/presentation/core/form_status.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_state.dart';
part 'country_cubit.freezed.dart';

@injectable
class CountryCubit extends Cubit<CountryState> {
  final GetCountriesUseCase getCountriesUseCase;

  CountryCubit({
    required this.getCountriesUseCase,
  }) : super(const CountryState.initial());

  onSelectedCountryChanged(String country) =>
      emit(state.copyWith(selectedCountry: country));

  Future<void> fetchCountries() async {
    emit(state.copyWith(countryListStatus: FormStatus.loading));
    final result = await getCountriesUseCase(NoParams());
    emit(
      result.fold((l) {
        return state.copyWith(
          errorMessage: l.appError,
          countryListStatus: FormStatus.failure,
        );
      }, (response) {
        onSelectedCountryChanged(response.countries[0].name ?? "");
        return state.copyWith(
          countryListStatus: FormStatus.success,
          countryListResult: response,
        );
      }),
    );
  }
}
