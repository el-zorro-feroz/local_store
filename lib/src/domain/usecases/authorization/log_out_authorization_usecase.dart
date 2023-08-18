import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/repositories/authorization_repository.dart';

@Injectable()
class LogOutAuthorizationUseCase extends UseCase<Unit, Unit> {
  final AuthorizationRepository authorizationRepository;

  LogOutAuthorizationUseCase({
    required this.authorizationRepository,
  });

  @override
  FutureOr<Either<Failure, Unit>> call(Unit p) {
    return authorizationRepository.logOut();
  }
}
