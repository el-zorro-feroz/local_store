import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/service/service.dart';
import 'package:local_store/core/usecase/usecase.dart';
import 'package:local_store/src/domain/entities/test.dart';
import 'package:local_store/src/domain/failures/test/empty_data_failure.dart';
import 'package:local_store/src/domain/repositories/test_repository.dart';
import 'package:local_store/src/domain/validators/empty_string_validator.dart';

class CreateTestUsecase extends UseCase<Test, String> {
  @override
  FutureOr<Either<Failure, Test>> call(String p) async {
    final TestRepository testRepository = service<TestRepository>();
    if (await EmptyStringValidator().verify(p)) {
      return testRepository.createTest(p);
    } else {
      return Left(EmptyDataFailure(stackTrace: StackTrace.empty));
    }
  }
}
