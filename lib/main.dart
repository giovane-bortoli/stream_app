import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stream_app/src/shared/locator/app_locator.dart';
import 'package:stream_app/stream_app.dart';

GetIt getIt = GetIt.instance;

void main() async {
  await setupLibraries();
  runApp(const StreamApp());
}

Future<void> setupLibraries() async {
  Locator().init();
}
