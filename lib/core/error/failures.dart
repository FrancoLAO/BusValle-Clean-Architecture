import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable
{
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class ConnectionFailure extends Failure {}

class LocationFailure extends Failure {}

class BusinessFailure extends Failure
{
  final String message;

  BusinessFailure(this.message);

  @override
  List<Object> get props => [message];
}