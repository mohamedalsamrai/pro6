import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/Services/WeatherService.dart';
import 'package:news/components/Temp.dart';
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

    return MaterialApp(debugShowCheckedModeBanner: false, home: Serachpage());

    // backgroundColor: Color(0xff1F4260)));
  }
}
