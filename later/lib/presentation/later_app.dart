import 'package:flutter/material.dart';

import 'navigation/later_router.dart';

class LaterApp extends StatelessWidget {
  LaterApp({super.key});

  final _router = $LaterRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'later',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
