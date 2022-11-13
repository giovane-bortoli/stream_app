import 'package:stream_app/src/modules/dashboard/models/movies_model.dart';

abstract class ServiceInterface {
  Future<List<MoviesModel>> getMovie();
}
