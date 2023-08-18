import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_data.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_params.dart';

abstract class AuthorizationRepository {
  Future<Either<Failure, AuthorizationData>> checkToken();
  Future<Either<Failure, AuthorizationData>> logIn(AuthorizationParams authorizationParams);
  Future<Either<Failure, Unit>> logOut();
}
