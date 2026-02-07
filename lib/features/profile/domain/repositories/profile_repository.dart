import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import '../../../auth/domain/entities/auth_user_entity.dart';
import '../entities/user_entity.dart';

abstract class ProfileRepository
{
  Future<Either<Failure, AuthUserEntity>> changePassword(int userId, String newPassword);
  Future<Either<Failure, UserEntity>> getUserProfile(int userId);
  Future<Either<Failure, void>> toggle_biometric();
}