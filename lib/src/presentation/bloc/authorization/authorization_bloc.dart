import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_data.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_params.dart';
import 'package:local_store/src/domain/usecases/authorization/log_in_authorization_usecase.dart';
import 'package:local_store/src/domain/usecases/authorization/log_out_authorization_usecase.dart';
import 'package:local_store/src/domain/usecases/authorization/validate_authorization_usecase.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

@Injectable()
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final ValidateAuthorizationUseCase validateAuthorizationUseCase;
  final LogInAuthorizationUseCase logInAuthorizationUseCase;
  final LogOutAuthorizationUseCase logOutAuthorizationUseCase;

  AuthorizationBloc({
    required this.validateAuthorizationUseCase,
    required this.logInAuthorizationUseCase,
    required this.logOutAuthorizationUseCase,
  }) : super(LoadingAuthorizationState()) {
    on<ValidateAuthorizationEvent>(_onValidateAuthorizationEvent);
    on<LogInAuthorizationEvent>(_onLogInAuthorizationEvent);
    on<LogOutAuthorizationEvent>(_onLogOutAuthorizationEvent);
  }

  FutureOr<void> _onValidateAuthorizationEvent(
    ValidateAuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    final Either<Failure, AuthorizationData> tokenOrFailure = await validateAuthorizationUseCase.call(unit);

    tokenOrFailure.fold(
      (Failure failure) {
        emit(AnonAuthorizationState());
      },
      (AuthorizationData authorizationData) {
        emit(UserAuthorizationState(authorizationData));
      },
    );
  }

  Future<FutureOr<void>> _onLogInAuthorizationEvent(
    LogInAuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    final Either<Failure, AuthorizationData> tokenOrFailure = await logInAuthorizationUseCase.call(event.data);

    tokenOrFailure.fold(
      (Failure failure) {
        //TODO: implement fail snakbar
      },
      (AuthorizationData authorizationData) {
        emit(UserAuthorizationState(authorizationData));
      },
    );
  }

  FutureOr<void> _onLogOutAuthorizationEvent(
    LogOutAuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    final Either<Failure, Unit> eventOrFailure = await logOutAuthorizationUseCase.call(unit);

    eventOrFailure.fold(
      (Failure failure) {
        //TODO: implement fail snakbar
      },
      (Unit event) {
        emit(AnonAuthorizationState());
      },
    );
  }
}
