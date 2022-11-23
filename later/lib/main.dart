import 'package:flutter/material.dart';
import 'package:later/presentation/later_app.dart';

import 'di/later_di.dart';

void main() async {
  await configureDependencies();
  runApp(LaterApp());
}
