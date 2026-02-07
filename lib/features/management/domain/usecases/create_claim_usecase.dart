import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import 'package:proyecto_bus/features/management/domain/entities/claim_entity.dart';
import 'package:proyecto_bus/features/management/domain/repositories/management_repository.dart';

class CreateClaimUseCase
{
  final ManagementRepository repository;

  const CreateClaimUseCase(this.repository);

  Future<Either<Failure, ClaimEntity>> call (ClaimEntity claim) async
  {
    return await repository.createClaim(claim);
  }
}