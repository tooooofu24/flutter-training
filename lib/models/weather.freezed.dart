// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String get weather_condition => throw _privateConstructorUsedError;
  int get max_temperature => throw _privateConstructorUsedError;
  int get min_temperature => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {String weather_condition,
      int max_temperature,
      int min_temperature,
      String date});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather_condition = null,
    Object? max_temperature = null,
    Object? min_temperature = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      weather_condition: null == weather_condition
          ? _value.weather_condition
          : weather_condition // ignore: cast_nullable_to_non_nullable
              as String,
      max_temperature: null == max_temperature
          ? _value.max_temperature
          : max_temperature // ignore: cast_nullable_to_non_nullable
              as int,
      min_temperature: null == min_temperature
          ? _value.min_temperature
          : min_temperature // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String weather_condition,
      int max_temperature,
      int min_temperature,
      String date});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather_condition = null,
    Object? max_temperature = null,
    Object? min_temperature = null,
    Object? date = null,
  }) {
    return _then(_$WeatherImpl(
      weather_condition: null == weather_condition
          ? _value.weather_condition
          : weather_condition // ignore: cast_nullable_to_non_nullable
              as String,
      max_temperature: null == max_temperature
          ? _value.max_temperature
          : max_temperature // ignore: cast_nullable_to_non_nullable
              as int,
      min_temperature: null == min_temperature
          ? _value.min_temperature
          : min_temperature // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  _$WeatherImpl(
      {required this.weather_condition,
      required this.max_temperature,
      required this.min_temperature,
      required this.date});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final String weather_condition;
  @override
  final int max_temperature;
  @override
  final int min_temperature;
  @override
  final String date;

  @override
  String toString() {
    return 'Weather(weather_condition: $weather_condition, max_temperature: $max_temperature, min_temperature: $min_temperature, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.weather_condition, weather_condition) ||
                other.weather_condition == weather_condition) &&
            (identical(other.max_temperature, max_temperature) ||
                other.max_temperature == max_temperature) &&
            (identical(other.min_temperature, min_temperature) ||
                other.min_temperature == min_temperature) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, weather_condition, max_temperature, min_temperature, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {required final String weather_condition,
      required final int max_temperature,
      required final int min_temperature,
      required final String date}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  String get weather_condition;
  @override
  int get max_temperature;
  @override
  int get min_temperature;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
