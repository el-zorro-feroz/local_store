import 'package:flutter/material.dart';
import 'package:local_store/core/service/service.dart';
import 'package:local_store/src/presentation/app.dart';

void main() {
  initServices();
  runApp(service<App>());
}
