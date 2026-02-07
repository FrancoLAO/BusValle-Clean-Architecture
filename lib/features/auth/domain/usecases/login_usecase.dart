import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import 'package:proyecto_bus/features/auth/domain/entities/auth_user_entity.dart';
import 'package:proyecto_bus/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase
{
  final AuthRepository repository;

  const LoginUseCase(this.repository);

  Future<Either<Failure, AuthUserEntity>> call (String email, String password) async
  {
    return await repository.login(email, password);
  }
}