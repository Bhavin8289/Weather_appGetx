import 'package:weather_appgetx/models/Current_weather.dart';

class WeatherData {
  final WeatherDataCurrent? current;

  WeatherData([this.current]);

  WeatherDataCurrent getCurrentWeather() => current!;
}
