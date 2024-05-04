import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../cofig/env/env.dart';
import 'interceptors/auth_interceptor.dart';

final class RestClient extends DioForNative {
  RestClient()
      : super(
          BaseOptions(
            baseUrl: Env.instance.devBaseUrl,
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 60),
          ),
        ) {
    interceptors.addAll(
      [
        AuthInterceptor(),
        LogInterceptor(
          //request: true,
          requestHeader: true,
          requestBody: true,
          //responseHeader: true,
          responseBody: true,
        ),
      ],
    );
  }

  RestClient get auth {
    options.extra['DIO_AUTH_KEY'] = true;
    return this;
  }

  RestClient get unAuth {
    options.extra['DIO_AUTH_KEY'] = false;
    return this;
  }
}
