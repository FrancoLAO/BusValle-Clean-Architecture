import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';
import 'package:proyecto_bus/features/tracking/domain/entities/bus_route_entity.dart';
import '../../../../core/error/failures.dart';
import '../entities/trip_entity.dart';

abstract class TrackingRepository
{
  Future<Either<Failure, BusRouteEntity>> getRoute(int routeId);
  Stream<LatLng> watchBusLocation (int busId);
  Future<Either<Failure, List<TripEntity>>> getActiveTrips();
}