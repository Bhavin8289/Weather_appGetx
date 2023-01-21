import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_appgetx/controller/globle_controller.dart';
import 'package:weather_appgetx/screens/widgets/current_weather.dart';
import 'package:weather_appgetx/screens/widgets/update/hourlyUpdate.dart';
import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobleController globleController =
      Get.put(GlobleController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globleController.checkLoading().isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      //!Location Header
                      const Header(),
                      //! Current Temp
                      CurrentWeatherWidget(
                          weatherdatacurrent: globleController
                              .getWeather()
                              .getCurrentWeather()),
                      SizedBox(
                        height: 30,
                      ),

                      HourlyData(
                        weatherDataHourly:
                            globleController.getWeather().getHourlyWeather(),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
