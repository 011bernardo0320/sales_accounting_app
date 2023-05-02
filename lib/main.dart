import 'package:flutter/material.dart';
import 'package:espetariateste/app/presentation/pages/initial/app_initial_widget.dart';
import 'package:espetariateste/core/inject/inject.dart';

void main() {
  Inject.init();

  runApp(const AppInitialWidget());
}
