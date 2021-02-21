import 'package:flutter/material.dart';
import 'package:weather_app/ui/start_screen.dart';
import 'package:weather_app/ui/weather_screen.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StartScreen(),
    );
  }
}
