import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service.config.dart';

final GetIt service = GetIt.instance;

@InjectableInit(initializerName: 'dev')
void initServices() => service.dev();
