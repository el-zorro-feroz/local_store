part of 'authorization_bloc.dart';

sealed class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();

  @override
  List<Object> get props => [];
}

class ValidateAuthorizationEvent extends AuthorizationEvent {}

class LogInAuthorizationEvent extends AuthorizationEvent {
  final AuthorizationParams data;

  @override
  List<Object> get props => [data];

  LogInAuthorizationEvent({
    required this.data,
  });
}

class LogOutAuthorizationEvent extends AuthorizationEvent {}
