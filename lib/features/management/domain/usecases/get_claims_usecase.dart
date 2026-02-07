import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/features/management/domain/entities/claim_entity.dart';

import '../../../../core/error/failures.dart';
import '../repositories/management_repository.dart';

class GetClaimsUseCase
{
  final ManagementRepository repository;

  const GetClaimsUseCase(this.repository);

  Future<Either<Failure, List<ClaimEntity>>> call () async
  {
    return await repository.getClaims();
  }
}