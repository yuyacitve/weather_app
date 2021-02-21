import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/ui/loading_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 15.0, right: 15.0),
        child: Column(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Weather',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextField(
              onChanged: (value) {
                cityName = value;
              },
              style: TextStyle(color: Colors.black),
              decoration: kTextFieldInputDecoration,
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoadingScreen(
                    cityName: cityName,
                  );
                }));
              },
              child: Text('送信'),
            ),
          ],
        ),
      ),
    );
  }
}
