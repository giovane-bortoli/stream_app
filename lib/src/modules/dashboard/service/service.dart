// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stream_app/src/core/remote_data_source/client.dart';
import 'package:stream_app/src/modules/dashboard/models/movies_model.dart';
import 'package:stream_app/src/modules/dashboard/service/service_interface.dart';

class Service implements ServiceInterface {
  final Client client;
  Service({
    required this.client,
  });

  @override
  Future<List<MoviesModel>> getMovie() {
    // TODO: implement getMovie
    throw UnimplementedError();
  }
}
