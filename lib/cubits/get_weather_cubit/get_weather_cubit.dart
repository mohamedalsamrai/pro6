import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Services/WeatherService.dart';
import 'package:news/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:news/models/WeatherModel.dart';
import 'package:news/pages/SerachPage.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeaherInitialState());
  gweWeatherData({required String cityName}) async {
    try {
      List<WeatherModel> weatherModel =
          await Weatherservice().getTempAtDays(nameCity: cityName);
      emit(WeathLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
