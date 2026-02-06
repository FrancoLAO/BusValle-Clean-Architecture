import 'package:proyecto_bus/features/tracking/data/models/bus_model.dart';

class UserModel
{
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final UserRole role;

  final int? numberTickets;
  final int? licenceNumber;
  final BusModel? assignedBus;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.role,
    this.numberTickets,
    this.licenceNumber,
    this.assignedBus,
  });
}

enum UserRole
{
  student,
  driver,
  admin
}