import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/ticket_repository.dart';

class PurchaseTicketPackageUseCase
{
  final TicketRepository repository;

  const PurchaseTicketPackageUseCase(this.repository);

  Future<Either<Failure, void>> call (int packageId, int userId) async
  {
    final remainingResult = await repository.getRemainingTickets(userId);
    return remainingResult.fold(
        (failure) => Left(failure),
        (count) async {
          if (count > 0)
            {
              return Left(BusinessFailure("Ya tienes un paquete activo"));
            }
          return await repository.buyPackage(packageId);
        },
    );
  }
}