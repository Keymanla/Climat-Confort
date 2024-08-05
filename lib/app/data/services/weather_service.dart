import 'dart:convert';

import 'package:climat_confort/app/data/model/response/weather_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey = '28b9599be170698a19d1b5617097ce94';
  final String apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

  Future<WeatherResponse> getOutdoorTemperature(String city) async {
    final response = await http.get(
      Uri.parse('$apiUrl?q=$city&appid=$apiKey&units=metric'),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      debugPrint(response.body);
      return WeatherResponse.fromJson(data);
    } else {
      throw Exception('Failed to load temperature');
    }
  }
}
