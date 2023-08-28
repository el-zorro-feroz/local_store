import 'package:mockito/annotations.dart';

import 'package:local_store/src/domain/repositories/authorization_repository.dart';
import 'package:local_store/src/domain/repositories/test_repository.dart';

@GenerateNiceMocks([MockSpec<TestRepository>(), MockSpec<AuthorizationRepository>()])
import 'repositories.mocks.dart';
