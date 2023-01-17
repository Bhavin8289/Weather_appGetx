import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_appgetx/controller/globle_controller.dart';

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
    return const Scaffold();
  }
}
