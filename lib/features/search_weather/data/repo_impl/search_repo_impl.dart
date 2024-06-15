import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failuer.dart';
import '../../domain/repos/search_repo.dart';
import '../data_source/remote_data_source.dart';
import '../model/SearchModel.dart';

class SearchRepoImpl implements SearchRepo {
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepoImpl(
      {required this.searchRemoteDataSource,});


  @override
  Future<Either<Failures, SearchModel>> searchWeather({String? name})async {
    try {
      SearchModel searchModel;
      searchModel = await searchRemoteDataSource.searchWeather(name: name);
      return right(searchModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}
