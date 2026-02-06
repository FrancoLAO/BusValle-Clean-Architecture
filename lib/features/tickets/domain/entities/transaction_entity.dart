import 'package:proyecto_bus/features/tracking/domain/entities/trip_entity.dart';

import '../../../profile/domain/entities/user_entity.dart';

class TransactionEntity
{
  final int id;
  final UserEntity user;
  final TripEntity trip;
  final DateTime createdAt;

  TransactionEntity({required this.id, required this.user, required this.trip, required this.createdAt});
}