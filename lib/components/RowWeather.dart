import 'package:flutter/material.dart';
import 'package:news/models/WeatherModel.dart';

class RowWeather extends StatelessWidget {
  
  List<WeatherModel> dataw = [];
  RowWeather({
   
    required this.dataw,
  
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        WeatherModel(
            time: dataw[0].time,
            icon: dataw[0].icon,
            temp: dataw[0].temp),
        WeatherModel(
            time: dataw[1].time,
            icon: dataw[1].icon,
            temp: dataw[1].temp),
        WeatherModel(
            time: dataw[2].time,
            icon: dataw[2].icon,
            temp: dataw[2].temp),
        WeatherModel(
            time: dataw[3].time,
            icon: dataw[3].icon,
            temp: dataw[3].temp),
      ],
    );
  }
}
