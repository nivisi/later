import 'package:flutter/material.dart';

import 'navigation/later_router.dart';

import 'package:later/presentation/theme/custom_colors.dart';
import 'package:later/presentation/theme/custom_text_style.dart';

class LaterApp extends StatelessWidget {
  LaterApp({super.key});

  final _router = $LaterRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'later',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: ThemeData().copyWith(extensions: <ThemeExtension<dynamic>>[
        CustomTextStyle(),
        CustomColors(),
      ]),
    );
  }
}
