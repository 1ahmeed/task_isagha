import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';
import '../../../../core/use_cases/use_case.dart';
import '../../data/model/SearchModel.dart';
import '../entities/searrch_entity.dart';
import '../repos/search_repo.dart';

class SearchUseCase extends UseCase<SearchModel, String> {
  final SearchRepo searchRepo;

  SearchUseCase(this.searchRepo);

  @override
  Future<Either<Failures, SearchModel>> call([String? param]) async {
    return await searchRepo.searchWeather(name: param!);
  }
}