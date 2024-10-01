import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/Services/WeatherService.dart';
import 'package:news/Widgets/WeatherInfo.dart';
import 'package:news/components/RowWeather.dart';
import 'package:news/components/Temp.dart';
import 'package:news/models/WeatherModel.dart';
import 'package:news/pages/SerachPage.dart';

   





class HomePage extends StatelessWidget {
   final Size ksize;
  final String name;
  List<WeatherModel> dataw1 ;

  HomePage({
    super.key,
    required this.ksize,
    required this.name,
    required this.dataw1,
   
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F4260),
      body: WeatherInfo(ksize: ksize, name: name, dataw1: dataw1),
    );
  }
}


