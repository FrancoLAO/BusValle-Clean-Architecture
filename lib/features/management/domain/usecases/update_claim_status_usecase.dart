import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/claim_entity.dart';
import '../repositories/management_repository.dart';

class UpdateClaimStatusUseCase
{
  final ManagementRepository repository;

  const UpdateClaimStatusUseCase(this.repository);

  Future<Either<Failure, ClaimEntity>> call (int id, ClaimStatus status) async
  {
    return await repository.updateClaimStatus(id, status);
  }
}