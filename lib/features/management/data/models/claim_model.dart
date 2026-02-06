import 'package:proyecto_bus/features/tracking/data/models/trip_model.dart';
import '../../../profile/data/models/user_model.dart';

class ClaimModel
{
  final int id;
  final UserModel user;
  final TripModel trip;
  final ClaimStatus status;
  final ClaimType type;
  final String title;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;

  ClaimModel({required this.id, required this.user, required this.trip, required this.status, required this.type,
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