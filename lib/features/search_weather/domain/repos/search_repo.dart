
import 'package:dartz/dartz.dart';
import 'package:task_weather/features/search_weather/domain/entities/searrch_entity.dart';

import '../../../../core/errors/failuer.dart';
import '../../data/model/SearchModel.dart';

abstract class SearchRepo{
  Future<Either<Failures,SearchModel>> searchWeather({String name});



}