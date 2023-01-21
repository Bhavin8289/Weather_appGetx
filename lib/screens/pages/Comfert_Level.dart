import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:weather_appgetx/Models/Current_weather.dart';

class ComfortLevel extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const ComfortLevel({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 1, left: 20, right: 20, bottom: 20),
          child: const Text(
            'COMFORT LEVEL',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 200,
          child: Column(
            children: [
              Center(
                child: SleekCircularSlider(
                  min: 0,
                  max: 100,
                  initialValue: weatherDataCurrent.current.humidity!.toDouble(),
                  appearance: CircularSliderAppearance(
                      infoProperties:
                          InfoProperties(bottomLabelText: 'Humidity'),
                      animationEnabled: true,
                      size: 150,
                      customColors: CustomSliderColors(
                        hideShadow: true,
                        trackColor: Colors.grey,
                        progressBarColors: [
                          Colors.teal,
                          Colors.red,
                          Colors.blue,
                        ],
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Feels Like',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: '${weatherDataCurrent.current.feelIsLike}',
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 12,
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    width: 1,
                    color: Colors.blue,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'UV Index',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: '${weatherDataCurrent.current.uvIndex}',
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
