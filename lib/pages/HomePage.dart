import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/Services/WeatherService.dart';
import 'package:news/Widgets/NoWeather.dart';
import 'package:news/Widgets/WeatherInfo.dart';
import 'package:news/components/RowWeather.dart';
import 'package:news/components/Temp.dart';
import 'package:news/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:news/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:news/models/WeatherModel.dart';
import 'package:news/pages/SerachPage.dart';

class HomePage extends StatelessWidget {
  final Size ksize;
 

  HomePage({
    super.key,
    required this.ksize,
   
  });
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Color(0xff1F4260),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeaherInitialState) {
              return Noweather();
            } else if (state is WeathLoadedState) {
              return WeatherInfo(ksize: ksize, name: nameCity);
            } else {
              return Center(child: Text("Name City Not Find"));
            }
          },
        ));
  }
}
