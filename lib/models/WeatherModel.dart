import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherModel extends StatelessWidget {
  final String time;
  final IconData icon;
  final int temp;

  WeatherModel({required this.time, required this.icon, required this.temp});
  factory WeatherModel.fromJson(json) {
    String date = json["datetime"];
    String Day = date.substring(5, 10);
    String condition = json["conditions"];
    double tempF = json["temp"];

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

    return WeatherModel(time: Day, icon: icon, temp: tempInCelsius);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
            size: 40,
            color: icon == Icons.wb_sunny
                ? Colors.amber
                : icon == Icons.water_drop_rounded
                    ? Colors.blue[400]
                    : icon == Icons.severe_cold_outlined
                        ? Colors.blue[200]
                        : Colors.black),
        SizedBox(height: 5),
        Text("$time", style: TextStyle(fontSize: 12, color: Colors.grey)),
        SizedBox(height: 5),
        Text("$temp°",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
