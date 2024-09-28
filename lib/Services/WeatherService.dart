import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/WeatherModel.dart';

class Weatherservice {
  String cityName;
  final dio = Dio();
  Weatherservice({required this.cityName});

  Future<List<WeatherModel>?> getTempAtH() async {
    try {
  Response response = await dio.get(
      "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$cityName?key=AS6LXASH6UDZNT5E3SSETNGZ2");
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData["days"]["hours"];
  List<WeatherModel> wedat = [];
  String a;
  String b;
  double c;
  for (var e in articles) {
    a = e["datetime"];
    b = e["conditions"];
    c = ((e["temp"] - 32) * 5 / 9);
    int v = c.toInt();
    WeatherModel weatherModel = WeatherModel(
        time: a.substring(0, 5),
        icon: b == "Clear"
            ? Icons.wb_sunny
            : b == "Rain, Partially cloudy"
                ? Icons.water_drop_rounded
                : b == "Overcast"
                    ? Icons.wb_cloudy_outlined
                    : v > 0
                        ? Icons.severe_cold_outlined
                        : Icons.wb_sunny,
        temp: v);
    wedat.add(weatherModel);
  }
  return wedat;
} catch (e) {
  return null;
}
  }
}
