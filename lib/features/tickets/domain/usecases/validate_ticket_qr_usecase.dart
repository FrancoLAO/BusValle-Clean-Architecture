import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/ticket_repository.dart';

class ValidateTicketQrUseCase
{
  final TicketRepository repository;

  const ValidateTicketQrUseCase(this.repository);

  Future<Either<Failure, bool>> call (String qrCode) async
  {
    return await repository.validateQR(qrCode);
  }
}