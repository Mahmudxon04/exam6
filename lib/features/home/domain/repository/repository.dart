
import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../entity/entity.dart';

abstract class ArticleRepository{
  Future<Either<Failure, List<ArticleEntity>>> getData();
}