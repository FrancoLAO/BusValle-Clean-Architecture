import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import 'package:proyecto_bus/features/tickets/domain/entities/ticket_entity.dart';

abstract class TicketRepository
{
  Future<Either<Failure, List<TicketEntity>>> getHistory();
  Future<Either<Failure, void>> buyPackage(int packageId);
  Future<Either<Failure, bool>> validateQR(String qrCode);
  Future<Either<Failure, List<TicketEntity>>> getAvailablePackages();
  Future<Either<Failure, int>> getRemainingTickets(int userId);
}