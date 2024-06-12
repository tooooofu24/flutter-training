import 'dart:convert';

import 'package:flutter_training/models/weather.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_provider.g.dart';

@riverpod
Future<Weather> weather(WeatherRef ref) async {
  const json = '''
    {
        "area": "tokyo",
        "date": "2020-04-01T12:00:00+09:00"
    }''';
  final yumemiWeather = YumemiWeather();
  final weatherJson =
      jsonDecode(yumemiWeather.fetchWeather(json)) as Map<String, dynamic>;
  return Weather.fromJson(weatherJson);
}
