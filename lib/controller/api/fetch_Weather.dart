import 'dart:convert';
import 'dart:developer';
import 'package:weather_appgetx/models/Weather/current_weather.dart';
import 'package:weather_appgetx/models/weather/weather_data.dart';
import 'package:http/http.dart' as http;

class FetchWeatherApi {
  WeatherData? weatherData;

  //Processing Data Response To Json

  Future<WeatherData> getData(lat, lon) async {
    final response = await http.get(
      Uri.parse(apiUrl(lat, lon)),
    );
    var jsonresponse = jsonDecode(response.body);

    log(jsonresponse);

    weatherData =
        WeatherData(current: WeatherDataCurrent.fromJson(jsonresponse));

    return weatherData!;
  }
}

apiUrl(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=111e76f07e2c48a7d42b3fedbf8f9f4f";
}
