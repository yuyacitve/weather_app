import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/model/networking.dart';
import 'package:weather_app/ui/weather_screen.dart';
import 'package:weather_app/ui_view_controller/loading_controller.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({this.cityName});

  String cityName;

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await LoadingModel().getLocationWeather(widget.cityName);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
