import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/profile_repository.dart';

class ToggleBiometricUseCase
{
  final ProfileRepository repository;

  const ToggleBiometricUseCase(this.repository);

  Future<Either<Failure, void>> call () async
  {
    return await repository.toggle_biometric();
  }
}