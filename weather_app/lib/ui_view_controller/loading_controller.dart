import 'package:flutter/material.dart';
import 'package:weather_app/model/networking.dart';
import 'package:weather_app/ui/loading_screen.dart';

const String apiKey = 'apiKey';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class LoadingModel {
  Future<dynamic> getLocationWeather(String cityName) {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = networkHelper.getData();

    return weatherData;
  }
}
