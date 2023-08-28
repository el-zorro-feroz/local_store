import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/src/domain/entities/test.dart';

abstract class TestRepository {
  FutureOr<Either<Failure, Test>> createTest(String data);
  FutureOr<Either<Failure, Test>> getTestById(int id);
  FutureOr<Either<Failure, List<Test>>> getAllTests();
  FutureOr<Either<Failure, Test>> updateTestById(UpdateTestParams updateTestParams);
  FutureOr<Either<Failure, Unit>> deleteTestById(int id);
}

final class UpdateTestParams {
  final int id;
  final String data;

  UpdateTestParams({
    required this.id,
    required this.data,
  });
}
