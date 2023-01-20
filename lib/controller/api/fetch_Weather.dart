import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:weather_appgetx/Models/Current_weather.dart';
import 'package:weather_appgetx/controller/api/api_key.dart';
import '../../Models/Weatherdata.dart';

class FetchWeatherApi {
  //! Processing The Data From Response => To JSON

  WeatherData? weatherData;

  Future<WeatherData> getWeatherData(lat, lon) async {
    var response = await http.get(Uri.parse(apiUrl(lat, lon)));
    log(response.body);

    var jsonData = jsonDecode(response.body.trim());

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
