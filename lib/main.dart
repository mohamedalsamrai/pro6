import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/Services/WeatherService.dart';
import 'package:news/Widgets/NoWeather.dart';
import 'package:news/components/Temp.dart';
import 'package:news/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:news/pages/HomePage.dart';
import 'package:news/pages/SerachPage.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size ksize = MediaQuery.sizeOf(context);

    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(
            ksize: ksize,
          )),
    );

    // backgroundColor: Color(0xff1F4260)));
  }
}
