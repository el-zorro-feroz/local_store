// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_store/src/presentation/app.dart' as _i3;
import 'package:local_store/src/presentation/bloc/authorization/authorization_bloc.dart'
    as _i5;
import 'package:local_store/src/presentation/pages/login_page.dart' as _i6;
import 'package:local_store/src/presentation/pages/recovery_page.dart' as _i7;
import 'package:local_store/src/presentation/pages/splash_page.dart' as _i8;

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
    gh.factory<_i5.AuthorizationBloc>(() => _i5.AuthorizationBloc());
    gh.factory<_i6.LoginPage>(() => _i6.LoginPage(key: gh<_i4.Key>()));
    gh.factory<_i7.RecoveryPage>(() => _i7.RecoveryPage(key: gh<_i4.Key>()));
    gh.factory<_i8.SplashPage>(() => _i8.SplashPage(key: gh<_i4.Key>()));
    return this;
  }
}
