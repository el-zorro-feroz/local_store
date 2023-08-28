import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/entities/test.dart';

class CreateTestUsecase extends UseCase<Test, String> {
  @override
  FutureOr<Either<Failure, Test>> call(String p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
