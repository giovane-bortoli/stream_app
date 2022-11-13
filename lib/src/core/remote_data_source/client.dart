// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stream_app/src/core/remote_data_source/api_response.dart';

abstract class Client {
  Future<ApiResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  });
}
