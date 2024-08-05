import 'package:flutter/material.dart';

class TemperatureModel with ChangeNotifier {
  double outdoorTemp;
  double indoorTemp;

  TemperatureModel({required this.outdoorTemp, required this.indoorTemp});

  void setTemperatures(double outdoor, double indoor) {
    outdoorTemp = outdoor;
    indoorTemp = indoor;
    notifyListeners();
  }
}
