import 'package:proyecto_bus/features/tracking/domain/entities/trip_entity.dart';
import '../../../profile/domain/entities/user_entity.dart';

class ClaimEntity {
  final int id;
  final UserEntity user;
  final TripEntity trip;
  final ClaimStatus status;
  final ClaimType type;
  final String title;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;

  ClaimEntity({required this.id, required this.user, required this.trip, required this.status, required this.type,
    required this.title, this.description, required this.createdAt, required this.updatedAt});
}

enum ClaimStatus {
  pending,
  inReview,
  resolved,
  closed
}

enum ClaimType {
  bug,
  featureRequest,
  billing,
  other
}