import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/features/tracking/domain/entities/trip_entity.dart';
import 'package:proyecto_bus/features/tracking/domain/repositories/tracking_repository.dart';

import '../../../../core/error/failures.dart';

class GetActiveTripsUseCase
{
  final TrackingRepository repository;

  const GetActiveTripsUseCase(this.repository);

  Future<Either<Failure, List<TripEntity>>> call () async
  {
    return await repository.getActiveTrips();
  }
}