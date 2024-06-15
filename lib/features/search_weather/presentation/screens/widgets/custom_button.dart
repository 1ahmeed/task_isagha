import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/core/utils/app_routes.dart';
import 'package:task_weather/core/utils/styles.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';
import 'package:task_weather/features/search_weather/presentation/screens/weather_screen.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15)
          ),
          width: double.infinity,

          child: TextButton(
              onPressed: (){
                if(SearchCubit.get(context)!.formKey.currentState!.validate()) {
                  SearchCubit.get(context)!.searchWeather();
                  Navigator.pushNamed(context, Routes.resultRoute);
                }

              },
              child: const
              Text('Search',style: Styles.textStyle15,))),
    );
  },
);
  }
}
