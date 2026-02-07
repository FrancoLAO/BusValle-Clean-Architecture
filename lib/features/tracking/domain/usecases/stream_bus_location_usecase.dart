import 'package:latlong2/latlong.dart';
import '../repositories/tracking_repository.dart';

class StreamBusLocationUseCase
{
  final TrackingRepository repository;

  const StreamBusLocationUseCase(this.repository);

  Stream<LatLng> call (int busId)
  {
    return repository.watchBusLocation(busId);
  }
}