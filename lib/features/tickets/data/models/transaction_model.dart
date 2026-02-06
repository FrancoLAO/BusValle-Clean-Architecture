import 'package:proyecto_bus/features/tracking/data/models/trip_model.dart';
import '../../../profile/data/models/user_model.dart';

class TransactionModel
{
  final int id;
  final UserModel user;
  final TripModel trip;
  final DateTime createdAt;

  TransactionModel({required this.id, required this.user, required this.trip, required this.createdAt});
}