import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';

import '../../../tracking/domain/entities/bus_entity.dart';
import '../entities/claim_entity.dart';

abstract class ManagementRepository
{
  Future<Either<Failure, List<ClaimEntity>>> getClaims();
  Future<Either<Failure, ClaimEntity>> createClaim(ClaimEntity claim);
  Future<Either<Failure, ClaimEntity>> updateClaimStatus(int claimId, ClaimStatus status);
  Future<Either<Failure, List<BusEntity>>> getBuses();
}