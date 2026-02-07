import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/ticket_entity.dart';
import '../repositories/ticket_repository.dart';

class GetTicketHistoryUseCase
{
  final TicketRepository repository;

  const GetTicketHistoryUseCase(this.repository);

  Future<Either<Failure, List<TicketEntity>>> call () async
  {
    return await repository.getHistory();
  }
}