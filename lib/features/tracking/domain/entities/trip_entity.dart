import 'package:proyecto_bus/features/tracking/domain/entities/bus_entity.dart';
import 'package:proyecto_bus/features/tracking/domain/entities/bus_route_entity.dart';

import '../../../profile/domain/entities/user_entity.dart';

class TripEntity {
  final int id;
  final UserEntity? driver;
  final BusRouteEntity busRoute;
  final BusEntity? assignedBus;
  final DateTime startTime;
  final DateTime? endTime;
  final TripStatus status;

  TripEntity({required this.id, this.driver, required this.busRoute, this.assignedBus,
    required this.startTime, this.endTime, required this.status});
}

enum TripStatus {
  pending
}