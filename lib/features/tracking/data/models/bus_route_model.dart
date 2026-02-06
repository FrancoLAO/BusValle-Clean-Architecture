import '../../../../core/location/lat_lng.dart';

class BusRouteModel
{
  final int id;
  final String routeName;
  final LatLng startLocation;
  final LatLng endLocation;
  final List<LatLng> points;

  BusRouteModel({required this.id, required this.routeName, required this.startLocation, required this.endLocation,
    required this.points});
}