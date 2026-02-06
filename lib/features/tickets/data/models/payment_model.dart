import 'package:proyecto_bus/features/tickets/data/models/ticket_model.dart';
import '../../../profile/data/models/user_model.dart';

class PaymentModel
{
  final int id;
  final UserModel user;
  final TicketModel ticketPlan;
  final String type;
  final int amount;

  PaymentModel({required this.id, required this.user, required this.ticketPlan, required this.type, required this.amount});
}