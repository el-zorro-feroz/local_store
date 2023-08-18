import 'package:equatable/equatable.dart';

class AuthorizationData extends Equatable {
  final String token;

  @override
  List<Object?> get props => [token];

  AuthorizationData({
    required this.token,
  });
}
