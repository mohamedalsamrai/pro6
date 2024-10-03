import 'package:flutter/material.dart';
import 'package:news/models/WeatherModel.dart';
import 'package:news/pages/SerachPage.dart';

class RowWeather extends StatelessWidget {
  RowWeather();
 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        WeatherModel(
            time: weatherModel[0].time,
            icon: weatherModel[0].icon,
            temp: weatherModel[0].temp),
        WeatherModel(
            time: weatherModel[1].time,
            icon: weatherModel[1].icon,
            temp: weatherModel[1].temp),
        WeatherModel(
            time: weatherModel[2].time,
            icon: weatherModel[2].icon,
            temp: weatherModel[2].temp),
        WeatherModel(
            time: weatherModel[3].time,
            icon: weatherModel[3].icon,
            temp: weatherModel[3].temp),
      ],
    );
  }
}
