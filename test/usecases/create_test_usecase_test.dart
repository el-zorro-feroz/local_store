import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/core/service/service.dart';
import 'package:local_store/src/domain/entities/test.dart';
import 'package:local_store/src/domain/failures/test/empty_data_failure.dart';
import 'package:local_store/src/domain/repositories/test_repository.dart';
import 'package:local_store/src/domain/usecases/test/create_test_usecase.dart';
import 'package:mockito/mockito.dart';

import '../services/mock_test_repository.dart';
import '../services/test_services.dart';

void main() async {
  await initMockServices();

  group('create test usecase', () {
    final CreateTestUsecase createTestUsecase = CreateTestUsecase();

    test('correct test', () async {
      // act
      final TestRepository testRepository = service<TestRepository>();

      // arrange
      final Either<Failure, Test> failOrTest = await createTestUsecase.call(createData);

      // assert
      expect(failOrTest.isRight(), true);
      verify(testRepository.createTest(createData)).called(1);
      verifyNoMoreInteractions(testRepository);
    });

    test(
      'empty data test',
      () async {
        // act
        final TestRepository testRepository = service<TestRepository>();

        // arrange
        final Either<Failure, Test> failOrTest = await createTestUsecase.call(emptyCreateData);

        // assert
        expect(
          failOrTest.fold((fail) {
            return fail is EmptyDataFailure;
          }, (test) => false),
          true,
        );
        verifyNoMoreInteractions(testRepository);
      },
    );
  });
}
