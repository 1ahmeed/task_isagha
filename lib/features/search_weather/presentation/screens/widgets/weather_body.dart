import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';
import 'package:task_weather/features/search_weather/presentation/screens/widgets/response_error_state_screen.dart';
import 'package:task_weather/features/search_weather/presentation/screens/widgets/response_success_state_screen.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if(state is SearchSuccessState) {
          return ResponseSuccessStateScreen(
            searchEntity:state.searchEntity
          );
        }else if(state is SearchErrorState){
          return ResponseErrorStateScreen(errorMessage: state.errorMessage,);
        } else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}





