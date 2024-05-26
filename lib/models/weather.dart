import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    @JsonKey(name: 'weather_condition') required String weatherCondition,
    @JsonKey(name: 'max_temperature') required int maxTemperature,
    @JsonKey(name: 'min_temperature') required int minTemperature,
    required String date,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
