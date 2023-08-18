import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final StackTrace stackTrace;

  @override
  List<Object?> get props => [stackTrace];

  const Failure({
    required this.stackTrace,
  });
}
