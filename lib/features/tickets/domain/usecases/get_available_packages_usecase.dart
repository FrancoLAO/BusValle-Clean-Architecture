import 'package:dartz/dartz.dart';
import 'package:proyecto_bus/core/error/failures.dart';
import 'package:proyecto_bus/features/tickets/domain/repositories/ticket_repository.dart';

import '../entities/ticket_entity.dart';

class GetAvailablePackagesUseCase
{
  final TicketRepository repository;

  const GetAvailablePackagesUseCase(this.repository);

  Future<Either<Failure, List<TicketEntity>>> call () async
  {
    return await repository.getAvailablePackages();
  }
}