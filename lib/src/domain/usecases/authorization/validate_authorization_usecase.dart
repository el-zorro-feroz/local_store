import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_data.dart';
import 'package:local_store/src/domain/repositories/authorization_repository.dart';

class ValidateAuthorizationUseCase extends UseCase<AuthorizationData, Unit> {
  final AuthorizationRepository authorizationRepository;

  ValidateAuthorizationUseCase({
    required this.authorizationRepository,
  });

  @override
  FutureOr<Either<Failure, AuthorizationData>> call(Unit p) {
    return authorizationRepository.checkToken();
  }
}
