import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import 'package:proyecto_bus/features/profile/domain/repositories/profile_repository.dart';

import '../../../auth/domain/entities/auth_user_entity.dart';

class ChangePasswordUseCase
{
  final ProfileRepository repository;

  const ChangePasswordUseCase(this.repository);

  Future<Either<Failure, AuthUserEntity>> call (int userId, String newPassword) async
  {
    return await repository.changePassword(userId, newPassword);
  }
}