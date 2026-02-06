import 'package:proyecto_bus/features/profile/domain/entities/user_entity.dart';
import 'package:proyecto_bus/features/tickets/domain/entities/ticket_entity.dart';

class PaymentEntity{
  final int id;
  final UserEntity user;
  final TicketEntity ticketPlan;
  final String type;
  final int amount;

  PaymentEntity({required this.id, required this.user, required this.ticketPlan, required this.type, required this.amount});
}