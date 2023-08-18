import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthorizationStrapiDatasource {
  static const String callbackUrl = '/auth/local';

  final Dio dio;

  AuthorizationStrapiDatasource({
    required this.dio,
  });

  Future<void> callback() async {
    dio.post(
      '',
    );
  }
}
