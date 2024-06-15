import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/features/search_weather/domain/use_cases/search_use_case.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';
import 'package:task_weather/features/search_weather/presentation/screens/search_screen.dart';
import 'package:task_weather/features/search_weather/presentation/screens/weather_screen.dart';

import '../../features/search_weather/data/repo_impl/search_repo_impl.dart';
import '../../injection_container.dart';
import 'app_strings.dart';

class Routes {
  static const String initialRoute = '/';
  static const String resultRoute = '/weatherScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: ((context) {
          return SearchScreen();
        }));

      case Routes.resultRoute:
        return MaterialPageRoute(builder: ((context) {
          return const WeatherScreen();
        }));

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) =>
        const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        )));
  }
}
