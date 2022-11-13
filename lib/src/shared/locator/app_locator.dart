import 'package:stream_app/main.dart';
import 'package:stream_app/src/modules/dashboard/controller/dashboard_store.dart';

class Locator {
  void init() {
    getIt.registerFactory<DashBoardStore>(() => DashBoardStore());
  }
}
