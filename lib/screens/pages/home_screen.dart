import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_appgetx/controller/globle_controller.dart';
import 'package:weather_appgetx/screens/Style/Coustom_colors.dart';
import 'package:weather_appgetx/screens/pages/Comfert_Level.dart';
import 'package:weather_appgetx/screens/pages/Daily_weather.dart';
import 'package:weather_appgetx/screens/pages/current_weather.dart';
import 'package:weather_appgetx/screens/pages/hourlyUpdate.dart';
import 'package:weather_appgetx/screens/Components/header.dart';

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
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/clouds.png',
                        height: 250,
                        width: 250,
                      ),
                      const CircularProgressIndicator()
                    ],
                  ),
                )
              : Center(
                  child: ListView(
                    physics: const ScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      //!Location Header
                      const Header(),
                      //! Current Temp
                      CurrentWeatherWidget(
                          weatherdatacurrent: globleController
                              .getWeather()
                              .getCurrentWeather()),
                      const SizedBox(
                        height: 30,
                      ),

                      HourlyData(
                        weatherDataHourly:
                            globleController.getWeather().getHourlyWeather(),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      DailyWeather(
                        weatherDataDaily:
                            globleController.getWeather().getDailyWeather(),
                      ),

                      Container(
                        height: 1,
                        color: CustomColors.cardcolor,
                      ),
                      ComfortLevel(
                          weatherDataCurrent:
                              globleController.getWeather().getCurrentWeather())
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
