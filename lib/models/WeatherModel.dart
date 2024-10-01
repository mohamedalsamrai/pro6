import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherModel extends StatelessWidget {
  final String time;
  final IconData icon;
  final int temp;

  WeatherModel({required this.time, required this.icon, required this.temp});

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
