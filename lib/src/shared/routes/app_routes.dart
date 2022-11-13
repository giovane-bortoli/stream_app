import 'package:flutter/cupertino.dart';

import 'package:stream_app/src/modules/dashboard/view/dashboard.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes(context) {
    return {
      '/dashboard': (context) => const DashBoardView(),
    };
  }
}
