import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/entities/test.dart';

class GetAllTestUsecase extends UseCase<List<Test>, Unit> {
  @override
  FutureOr<Either<Failure, List<Test>>> call(Unit p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
