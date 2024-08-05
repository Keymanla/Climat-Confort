import 'package:climat_confort/app/data/model/response/weather_response.dart';
import 'package:climat_confort/app/data/provider/home_provider.dart';
import 'package:climat_confort/app/data/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController({this.provider});
  final HomeProvider? provider;

  final WeatherService weatherService = WeatherService();
  RxDouble outdoorTemp = 0.0.obs;
  RxDouble indoorTemp = 0.0.obs;
  RxInt humidity = 0.obs;

  final ValueNotifier<double> valueNotifier = ValueNotifier(0);

  final RxInt counter = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getOutDoorTemperature();
  }

  void increase() async {
    counter.value += 1;
  }

  void decrease() {
    counter.value -= 1;
  }

  calculateIndoorTemperature(double outdoorTemp) {
    if (outdoorTemp < 19) {
      updateIndoorTemp(24);
    } else if (outdoorTemp < 26) {
      updateIndoorTemp(outdoorTemp + 5);
    } else {
      updateIndoorTemp(26.0);
    }
  }

  getOutDoorTemperature() async {
    WeatherResponse weatherResponse =
        await weatherService.getOutdoorTemperature('Dakar');
    outdoorTemp.value = weatherResponse.main!.temp!;
    humidity.value = weatherResponse.main!.humidity!;
    await calculateIndoorTemperature(outdoorTemp.value);
    update();
  }

  updateIndoorTemp(double outdoorTemp) {
    indoorTemp.value = outdoorTemp;
    update();
  }

  double convertTemperatureToProgress(double temperature) {
    const double minTemp = 18.0;
    const double maxTemp = 30.0;

    if (temperature < minTemp) {
      return 0.0;
    } else if (temperature > maxTemp) {
      return 100.0;
    } else {
      return ((temperature - minTemp) / (maxTemp - minTemp)) * 100;
    }
  }
}
