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
        String date = day["datetime"];
        String Day = date.substring(5, 10);
        String condition = day["conditions"];
        double tempF = day["temp"];

        // تحويل درجة الحرارة من فهرنهايت إلى مئوية
        double tempC = ((tempF - 32) * 5 / 9);
        int tempInCelsius = tempC.toInt();

        // اختيار الأيقونة بناءً على حالة الطقس
        IconData icon = condition == "Clear"
            ? Icons.wb_sunny
            : condition.contains("Rain")
                ? Icons.water_drop_rounded
                : condition.contains("Cloud")
                    ? Icons.wb_cloudy_outlined
                    : Icons.wb_sunny;

        // إنشاء كائن من WeatherModel
        WeatherModel weatherModel = WeatherModel(
          time: Day, // هنا يمكنك استخدام التاريخ بدل الوقت
          icon: icon,
          temp: tempInCelsius,
        );

        weatherData.add(weatherModel);
      }

      return weatherData;
    } catch (e) {
      print("Error fetching weather data: $e");
      return [];
    }
  }
}
