import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_training/models/weather.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class MainState extends ChangeNotifier {
  var _weatherCondition = '';

  String get weatherCondition => _weatherCondition;

  void fetchWetherCondition() {
    const json = '''
     {
         "area": "tokyo",
         "date": "2020-04-01T12:00:00+09:00"
     }''';
    final yumemiWeather = YumemiWeather();
    final weatherJson =
        jsonDecode(yumemiWeather.fetchWeather(json)) as Map<String, dynamic>;
    final weather = Weather.fromJson(weatherJson);
    _weatherCondition = weather.weather_condition;
    notifyListeners();
  }
}
