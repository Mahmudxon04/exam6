

import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/entity/entity.dart';
import '../../domain/repository/repository.dart';
import '../data_source/data_source.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleDataSource _dataSource;

  ArticleRepositoryImpl({required ArticleDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<Either<Failure, List<ArticleEntity>>> getData() async{
    try {
      final result = await _dataSource.getData();
      return Right(result);
    } catch (e) {
      return Left(
        const ServerFailure(),
      );
    }
  }
}
