import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/WeatherModel.dart';

class Weatherservice {
  final String nameCity;
  final dio = Dio();

  Weatherservice({required this.nameCity});

  // دالة لجلب بيانات الطقس للأيام
  Future<List<WeatherModel>> getTempAtDays() async {
    try {
      Response response = await dio.get(
          "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$nameCity?key=AS6LXASH6UDZNT5E3SSETNGZ2");
      Map<dynamic, dynamic> jsonData = response.data;

      // الوصول إلى قائمة الأيام
      List<dynamic> days = jsonData["days"];
      List<WeatherModel> weatherData = [];

      // اجتياز كل يوم لاستخراج البيانات المطلوبة
      for (var day in days) {
        // إنشاء كائن من WeatherModel
        WeatherModel weatherModel = WeatherModel.fromJson(day);

        weatherData.add(weatherModel);
      }

      return weatherData;
    } catch (e) {
      print("Error fetching weather data: $e");
      return [];
    }
  }
}
