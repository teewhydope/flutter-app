// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryState {
  String get errorMessage => throw _privateConstructorUsedError;
  String get selectedCountry => throw _privateConstructorUsedError;
  CountryListModel? get countryListResult => throw _privateConstructorUsedError;
  FormStatus get countryListStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage, String selectedCountry,
            CountryListModel? countryListResult, FormStatus countryListStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage, String selectedCountry,
            CountryListModel? countryListResult, FormStatus countryListStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage, String selectedCountry,
            CountryListModel? countryListResult, FormStatus countryListStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryStateCopyWith<CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
  @useResult
  $Res call(
      {String errorMessage,
      String selectedCountry,
      CountryListModel? countryListResult,
      FormStatus countryListStatus});
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? selectedCountry = null,
    Object? countryListResult = freezed,
    Object? countryListStatus = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCountry: null == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String,
      countryListResult: freezed == countryListResult
          ? _value.countryListResult
          : countryListResult // ignore: cast_nullable_to_non_nullable
              as CountryListModel?,
      countryListStatus: null == countryListStatus
          ? _value.countryListStatus
          : countryListStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      String selectedCountry,
      CountryListModel? countryListResult,
      FormStatus countryListStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? selectedCountry = null,
    Object? countryListResult = freezed,
    Object? countryListStatus = null,
  }) {
    return _then(_$InitialImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCountry: null == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String,
      countryListResult: freezed == countryListResult
          ? _value.countryListResult
          : countryListResult // ignore: cast_nullable_to_non_nullable
              as CountryListModel?,
      countryListStatus: null == countryListStatus
          ? _value.countryListStatus
          : countryListStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.errorMessage = '',
      this.selectedCountry = '',
      this.countryListResult,
      this.countryListStatus = FormStatus.initial});

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String selectedCountry;
  @override
  final CountryListModel? countryListResult;
  @override
  @JsonKey()
  final FormStatus countryListStatus;

  @override
  String toString() {
    return 'CountryState.initial(errorMessage: $errorMessage, selectedCountry: $selectedCountry, countryListResult: $countryListResult, countryListStatus: $countryListStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.countryListResult, countryListResult) ||
                other.countryListResult == countryListResult) &&
            (identical(other.countryListStatus, countryListStatus) ||
                other.countryListStatus == countryListStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, selectedCountry,
      countryListResult, countryListStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage, String selectedCountry,
            CountryListModel? countryListResult, FormStatus countryListStatus)
        initial,
  }) {
    return initial(
        errorMessage, selectedCountry, countryListResult, countryListStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage, String selectedCountry,
            CountryListModel? countryListResult, FormStatus countryListStatus)?
        initial,
  }) {
    return initial?.call(
        errorMessage, selectedCountry, countryListResult, countryListStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage, String selectedCountry,
            CountryListModel? countryListResult, FormStatus countryListStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          errorMessage, selectedCountry, countryListResult, countryListStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CountryState {
  const factory _Initial(
      {final String errorMessage,
      final String selectedCountry,
      final CountryListModel? countryListResult,
      final FormStatus countryListStatus}) = _$InitialImpl;

  @override
  String get errorMessage;
  @override
  String get selectedCountry;
  @override
  CountryListModel? get countryListResult;
  @override
  FormStatus get countryListStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
