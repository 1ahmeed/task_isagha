part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchSuccessState extends SearchState {
  final SearchEntity searchEntity;

  SearchSuccessState({required this.searchEntity});
}

class SearchErrorState extends SearchState {
 final String errorMessage;

  SearchErrorState({required this.errorMessage});
}

