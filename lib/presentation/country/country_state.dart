part of 'country_cubit.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.initial({
    @Default('') String errorMessage,
    @Default('') String selectedCountry,
    CountryListModel? countryListResult,
    @Default(FormStatus.initial) FormStatus countryListStatus,
  }) = _Initial;
}
