// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      weather_condition: json['weather_condition'] as String,
      max_temperature: (json['max_temperature'] as num).toInt(),
      min_temperature: (json['min_temperature'] as num).toInt(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'weather_condition': instance.weather_condition,
      'max_temperature': instance.max_temperature,
      'min_temperature': instance.min_temperature,
      'date': instance.date,
    };
