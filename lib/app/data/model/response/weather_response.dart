import 'dart:convert';

import 'package:climat_confort/app/data/model/main_weather.dart';

class WeatherResponse {
  final MainWeather? main;

  WeatherResponse({
    this.main,
  });

  factory WeatherResponse.fromRawJson(String str) =>
      WeatherResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
        main: json["main"] == null ? null : MainWeather.fromJson(json["main"]),
      );

  Map<String, dynamic> toJson() => {
        "main": main?.toJson(),
      };
}
