// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:stream_app/src/core/remote_data_source/api_response.dart';

import 'client.dart';

class DioImplRemoteDataSource implements Client {
  final Dio dio;
  DioImplRemoteDataSource({
    required this.dio,
  });

  @override
  Future<ApiResponse> get(String path,
      {Map<String, String>? headers, Map<String, dynamic>? query}) async {
    final response = await dio.get(path,
        queryParameters: query,
        options: Options(
          headers: headers,
          sendTimeout: 1000,
          receiveTimeout: 1000,
        ));
    return ApiResponse.fromDioResponse(response);
  }
}
