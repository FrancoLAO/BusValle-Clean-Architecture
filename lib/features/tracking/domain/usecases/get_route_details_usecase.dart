import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/bus_route_entity.dart';
import '../repositories/tracking_repository.dart';

class GetRouteDetailsUseCase
{
  final TrackingRepository repository;

  const GetRouteDetailsUseCase(this.repository);

  Future<Either<Failure, BusRouteEntity>> call (int routeId) async
  {
    return await repository.getRoute(routeId);
  }
}