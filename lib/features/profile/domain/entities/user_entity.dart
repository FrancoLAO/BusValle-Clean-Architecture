import 'package:proyecto_bus/features/tracking/domain/entities/bus_entity.dart';

class UserEntity {
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final UserRole role;

  final int? numberTickets;
  final int? licenceNumber;
  final BusEntity? assignedBus;

  UserEntity({
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