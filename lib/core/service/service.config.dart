// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_store/src/data/datasources/strapi/authorization_strapi_datasource.dart'
    as _i5;
import 'package:local_store/src/data/repositories/strapi_authorization_repository.dart'
    as _i11;
import 'package:local_store/src/domain/repositories/authorization_repository.dart'
    as _i10;
import 'package:local_store/src/domain/usecases/authorization/log_in_authorization_usecase.dart'
    as _i12;
import 'package:local_store/src/domain/usecases/authorization/log_out_authorization_usecase.dart'
    as _i13;
import 'package:local_store/src/domain/usecases/authorization/validate_authorization_usecase.dart'
    as _i15;
import 'package:local_store/src/presentation/app.dart' as _i3;
import 'package:local_store/src/presentation/bloc/authorization/authorization_bloc.dart'
    as _i14;
import 'package:local_store/src/presentation/pages/login_page.dart' as _i7;
import 'package:local_store/src/presentation/pages/recovery_page.dart' as _i8;
import 'package:local_store/src/presentation/pages/splash_page.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt dev({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.App>(() => _i3.App(key: gh<_i4.Key>()));
    gh.factory<_i5.AuthorizationStrapiDatasource>(
        () => _i5.AuthorizationStrapiDatasource(dio: gh<_i6.Dio>()));
    gh.factory<_i7.LoginPage>(() => _i7.LoginPage(key: gh<_i4.Key>()));
    gh.factory<_i8.RecoveryPage>(() => _i8.RecoveryPage(key: gh<_i4.Key>()));
    gh.factory<_i9.SplashPage>(() => _i9.SplashPage(key: gh<_i4.Key>()));
    gh.factory<_i10.AuthorizationRepository>(() =>
        _i11.StrapiAuthorizationRepository(
            authorizationStrapiDatasource:
                gh<_i5.AuthorizationStrapiDatasource>()));
    gh.factory<_i12.LogInAuthorizationUseCase>(() =>
        _i12.LogInAuthorizationUseCase(
            authorizationRepository: gh<_i10.AuthorizationRepository>()));
    gh.factory<_i13.LogOutAuthorizationUseCase>(() =>
        _i13.LogOutAuthorizationUseCase(
            authorizationRepository: gh<_i10.AuthorizationRepository>()));
    gh.factory<_i14.AuthorizationBloc>(() => _i14.AuthorizationBloc(
          validateAuthorizationUseCase: gh<_i15.ValidateAuthorizationUseCase>(),
          logInAuthorizationUseCase: gh<_i12.LogInAuthorizationUseCase>(),
          logOutAuthorizationUseCase: gh<_i13.LogOutAuthorizationUseCase>(),
        ));
    return this;
  }
}
