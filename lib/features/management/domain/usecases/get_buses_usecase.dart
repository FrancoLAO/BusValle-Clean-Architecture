import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/features/tracking/domain/entities/bus_entity.dart';

import '../../../../core/error/failures.dart';
import '../repositories/management_repository.dart';

class GetBusesUseCase
{
  final ManagementRepository repository;

  const GetBusesUseCase(this.repository);

  Future<Either<Failure, List<BusEntity>>> call () async
  {
    return await repository.getBuses();
  }
}