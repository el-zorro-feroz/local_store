import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/entities/test.dart';
import 'package:local_store/src/domain/repositories/test_repository.dart';

class UpdateTestByIdUseCase extends UseCase<Test, UpdateTestParams> {
  @override
  FutureOr<Either<Failure, Test>> call(UpdateTestParams p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
