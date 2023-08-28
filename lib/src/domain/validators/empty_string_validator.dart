import 'dart:async';

import 'package:local_store/core/validator/validator.dart';

class EmptyStringValidator extends Validator<String> {
  @override
  FutureOr<bool> verify(String t) {
    return t.isNotEmpty;
  }
}
