import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/core/utils/styles.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';
import 'package:task_weather/features/search_weather/presentation/screens/widgets/weather_body.dart';

import '../../../../generated/assets.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: const WeatherBody()
    );
  }
}


AppBar buildAppBar()=>AppBar(
  title: const Text("Weather"),
  elevation: 0,
);





