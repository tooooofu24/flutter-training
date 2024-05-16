import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
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
    final weatherConditionJson = yumemiWeather.fetchWeather(json);
    final weatherCondition =
        jsonDecode(weatherConditionJson) as Map<String, dynamic>;
    _weatherCondition = weatherCondition['weather_condition'] as String;
    notifyListeners();
  }
}
