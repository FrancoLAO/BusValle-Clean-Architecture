import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import 'package:proyecto_bus/features/auth/domain/entities/auth_user_entity.dart';

abstract class AuthRepository
{
  Future<Either<Failure, AuthUserEntity>> login (String email, String password);
}