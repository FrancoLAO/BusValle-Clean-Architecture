import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/profile_repository.dart';

class GetUserProfileUseCase
{
  final ProfileRepository repository;

  const GetUserProfileUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call (int userId) async
  {
    return await repository.getUserProfile(userId);
  }
}