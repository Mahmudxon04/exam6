
import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../entity/entity.dart';

abstract class AuthRepository{
  Future<Either<Failure, AuthUserEntity>> getUser();
Future<Either<Failure,AuthUserEntity>> logIn(String email,String password);
Future<Either<Failure,AuthUserEntity>> signUp(String email,String password);
Future<Either<Failure,void>> logOut();
}