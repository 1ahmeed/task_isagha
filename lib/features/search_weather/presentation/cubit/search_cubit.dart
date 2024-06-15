import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_weather/features/search_weather/data/model/SearchModel.dart';
import 'package:task_weather/features/search_weather/domain/entities/searrch_entity.dart';

import '../../domain/use_cases/search_use_case.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchUseCase}) : super(SearchInitial());
  static SearchCubit? get(context) => BlocProvider.of(context);

  var searchController=TextEditingController();
  final formKey=GlobalKey<FormState>();

  final SearchUseCase searchUseCase;
  Future<void> searchWeather()async {
emit(SearchLoadingState());
    var result = await searchUseCase.call(searchController.text);
    result.fold((failure) {
        emit(SearchErrorState( errorMessage:failure.errorMessage));
    }, (searchResult) {
      emit(SearchSuccessState(searchEntity:searchResult ));
    });
  }

}
