import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:local_store/core/failure/failure.dart';
import 'package:local_store/src/data/datasources/strapi/authorization_strapi_datasource.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_data.dart';
import 'package:local_store/src/domain/entities/authorization/authorization_params.dart';
import 'package:local_store/src/domain/repositories/authorization_repository.dart';

@Injectable(as: AuthorizationRepository)
class StrapiAuthorizationRepository extends AuthorizationRepository {
  final AuthorizationStrapiDatasource authorizationStrapiDatasource;

  StrapiAuthorizationRepository({
    required this.authorizationStrapiDatasource,
  });

  @override
  Future<Either<Failure, AuthorizationData>> checkToken() {
    // TODO: implement checkToken
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthorizationData>> logIn(AuthorizationParams authorizationParams) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }
}
