import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_data.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_params.dart';
import 'package:local_store/src/domain/repositories/authorization_repository.dart';

@Injectable()
class LogInAuthorizationUseCase extends UseCase<AuthorizationData, AuthorizationParams> {
  final AuthorizationRepository authorizationRepository;

  LogInAuthorizationUseCase({
    required this.authorizationRepository,
  });

  @override
  FutureOr<Either<Failure, AuthorizationData>> call(AuthorizationParams p) {
    return authorizationRepository.logIn(p);
  }
}
