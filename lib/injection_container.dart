import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'core/utils/api_service.dart';
import 'features/search_weather/data/data_source/remote_data_source.dart';
import 'features/search_weather/data/repo_impl/search_repo_impl.dart';

final getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
        searchRemoteDataSource:
        SearchRemoteDataSourceImpl(getIt.get<ApiService>())),
  );
}
