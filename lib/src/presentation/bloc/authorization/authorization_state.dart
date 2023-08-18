part of 'authorization_bloc.dart';

sealed class AuthorizationState extends Equatable {
  const AuthorizationState();

  @override
  List<Object> get props => [];
}

final class LoadingAuthorizationState extends AuthorizationState {}

final class UserAuthorizationState extends AuthorizationState {
  final AuthorizationData data;

  @override
  List<Object> get props => [data];

  UserAuthorizationState(
    this.data,
  );
}

final class AnonAuthorizationState extends AuthorizationState {}

final class UnaviableServerAuthorizationState extends AuthorizationState {}
