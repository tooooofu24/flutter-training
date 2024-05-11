import 'package:flutter/material.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class MainState extends ChangeNotifier {
  var _weatherCondition = '';

  String get weatherCondition => _weatherCondition;

  void fetchWetherCondition() {
    final yumemiWeather = YumemiWeather();
    final weatherCondition = yumemiWeather.fetchSimpleWeather();
    _weatherCondition = weatherCondition;
    notifyListeners();
  }
}
