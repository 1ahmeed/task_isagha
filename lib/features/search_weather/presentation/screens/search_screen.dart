import 'package:flutter/material.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';
import 'package:task_weather/features/search_weather/presentation/screens/widgets/custom_button.dart';
import 'package:task_weather/features/search_weather/presentation/screens/widgets/custom_search_text_field.dart';


class SearchScreen extends StatelessWidget {


  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          title: const Text('Weather App'),
        ),
      body: Form(
        key: SearchCubit.get(context)!.formKey,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomSearchTextField(),
            CustomSearchButton(),
          ],
        ),
      ),
    );
  }
}



