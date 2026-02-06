import '../../../../core/location/lat_lng.dart';

class BusRouteEntity{
  final int id;
  final String routeName;
  final LatLng startLocation;
  final LatLng endLocation;
  final List<LatLng> points;

  BusRouteEntity({required this.id, required this.routeName, required this.startLocation, required this.endLocation,
    required this.points});
}