import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/ticket_repository.dart';

class GetRemainingTicketsUseCase
{
  final TicketRepository repository;

  const GetRemainingTicketsUseCase(this.repository);

  Future<Either<Failure, int>> call (int userId) async
  {
    return await repository.getRemainingTickets(userId);
  }
}