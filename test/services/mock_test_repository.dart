import 'package:dartz/dartz.dart';
import 'package:local_store/src/domain/entities/test.dart';
import 'package:local_store/src/domain/failures/test/empty_data_failure.dart';
import 'package:mockito/mockito.dart';

import '../mocks/repositories.mocks.dart';

const int createId = 2;
const String createData = 'Test';

const String emptyCreateData = '';

MockTestRepository arrangeMockTestRepository() {
  final MockTestRepository mockTestRepository = MockTestRepository();

  // Create Test
  when(mockTestRepository.createTest(createData)).thenAnswer((_) async {
    return Right(Test(id: createId, data: createData));
  });

  when(mockTestRepository.createTest(emptyCreateData)).thenAnswer((_) async {
    return Left(EmptyDataFailure(stackTrace: StackTrace.empty));
  });

  // ...

  return mockTestRepository;
}
