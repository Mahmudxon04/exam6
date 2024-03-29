

import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/entity.dart';
import '../repository/repository.dart';

class ArticleUseCase implements UseCase<List<ArticleEntity>, NoParams> {
  final ArticleRepository _repositoryImpl;

  ArticleUseCase({required ArticleRepository repositoryImpl})
      : _repositoryImpl = repositoryImpl;

  @override
  Future<Either<Failure, List<ArticleEntity>>> call(NoParams param)async {
    if(param is GetDataArticle){
      print(_repositoryImpl.getData());
      return await _repositoryImpl.getData();
    }
    else {
      print("---------------------------------------UnimplementedError-------------------------------");
      throw UnimplementedError();
    }
  }
}

class GetDataArticle extends NoParams {}
