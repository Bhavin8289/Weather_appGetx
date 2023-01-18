import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:weather_appgetx/Models/Weatherdata.dart';
import 'package:weather_appgetx/controller/api/api_key.dart';
import 'package:weather_appgetx/models/Current_weather.dart';

class FetchWeatherApi {
  WeatherData? weatherData;

  // Processing The Data From Response => To JSON

  Future<WeatherData> getWeatherData(lat, lon) async {
    var response = await http.get(Uri.parse(apiUrl(lat, lon)));
    log(response.body);

    var jsonData = jsonDecode(response.body);

    log(jsonData);

    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonData));
    return weatherData!;
  }

  String apiUrl(var lat, var lon) {
    String url;
    url =
        "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKey&units=metrix&exclude=minutely";
    return url;
  }
}
