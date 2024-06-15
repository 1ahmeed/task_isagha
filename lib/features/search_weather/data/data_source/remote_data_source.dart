import 'package:task_weather/features/search_weather/data/model/SearchModel.dart';
import 'package:task_weather/features/search_weather/domain/entities/searrch_entity.dart';
import '../../../../core/utils/api_service.dart';

abstract class SearchRemoteDataSource{
  Future<SearchModel> searchWeather({String? name});
}

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource{
  final ApiService apiService;

  SearchRemoteDataSourceImpl(this.apiService);

  @override
  Future<SearchModel> searchWeather({String? name}) async{
    var data = await apiService.get(
        endPoint:
        'current.json?key=0024b98f24294aa38ff165814230902&q=$name&aqi=no'
    );
    SearchModel searchModel = SearchModel.fromJson(data);
    print(searchModel);
    return searchModel;
  }

}


