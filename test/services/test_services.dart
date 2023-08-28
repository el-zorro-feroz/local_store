import 'dart:async';

import 'package:local_store/core/service/service.dart';
import 'package:local_store/src/domain/repositories/test_repository.dart';

import 'mock_test_repository.dart';

FutureOr<void> initMockServices() async {
  service.registerLazySingleton<TestRepository>(() => arrangeMockTestRepository());
}
