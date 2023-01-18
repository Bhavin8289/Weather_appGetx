import 'package:flutter/material.dart';
import 'package:weather_appgetx/models/Weather/current_weather.dart';

class CurrentWeather extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentWeather({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${weatherDataCurrent.current.humidity}'),
    );
  }
}
