import 'package:proyecto_bus/features/tracking/data/models/bus_model.dart';
import 'package:proyecto_bus/features/tracking/data/models/bus_route_model.dart';
import '../../../profile/data/models/user_model.dart';

class TripModel
{
  final int id;
  final UserModel? driver;
  final BusRouteModel busRoute;
  final BusModel? assignedBus;
  final DateTime startTime;
  final DateTime? endTime;
  final TripStatus status;

  TripModel({required this.id, this.driver, required this.busRoute, this.assignedBus,
    required this.startTime, this.endTime, required this.status});
}

enum TripStatus {
  pending
}