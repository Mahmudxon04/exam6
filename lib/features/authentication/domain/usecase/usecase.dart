

import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/entity.dart';
import '../repository/repository.dart';

class AuthUseCase implements UseCase<AuthUserEntity,Params>{

  final AuthRepository _repository;

  AuthUseCase(AuthRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, AuthUserEntity>> call(Params param) {
    if (param is GetStatusParams) {
      return _repository.getUser();
    }
    else if (param is SingUpParams) {
    return _repository.signUp(param.email, param.password);
    } else if (param is LoginParams) {
    return _repository.logIn(param.email, param.password);
    } else {
    return throw UnimplementedError();
    }
  }

}
abstract class Params {}

class GetStatusParams extends Params {}

class LoginParams extends Params {
  final String email;
  final String password;

  LoginParams({
    required this.email,
    required this.password,
  });
}

class SingUpParams extends Params {
  final String email;
  final String password;

  SingUpParams({required this.email, required this.password});
}