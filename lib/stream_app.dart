import 'package:flutter/material.dart';
import 'package:stream_app/src/shared/routes/app_routes.dart';
import 'package:stream_app/src/shared/theme/theme_data.dart';

class StreamApp extends StatelessWidget {
  const StreamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemeData.materialTheme(context),
      routes: AppRoutes.routes(context),
      initialRoute: '/dashboard',
    );
  }
}
