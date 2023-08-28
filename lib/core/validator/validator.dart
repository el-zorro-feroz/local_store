import 'dart:async';

abstract class Validator<T> {
  FutureOr<bool> verify(T t);
}
