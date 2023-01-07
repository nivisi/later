import 'package:flutter/material.dart';

import 'navigation/later_router.dart';

import './theme/theme.dart';

class LaterApp extends StatelessWidget {
  LaterApp({super.key});

  final _router = $LaterRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'later',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: ThemeData().copyWith(
        extensions: [
          const LaterTypography(
            text1: TextStyle(fontSize: 14),
            text2: TextStyle(fontSize: 12),
            title1: TextStyle(fontSize: 24),
            title2: TextStyle(fontSize: 22),
            subtitle1: TextStyle(fontSize: 18),
            subtitle2: TextStyle(fontSize: 16),
          ),
          const LaterPalette(
            primaryColor: LaterLightPalette.primaryColor,
            backgroundColor: LaterLightPalette.backgroundColor,
            backgroundSecondaryColor:
                LaterLightPalette.backgroundSecondaryColor,
            foregroundColor: LaterLightPalette.foregroundColor,
            foregroundDisabledColor: LaterLightPalette.foregroundDisabledColor,
            foregroundSecondaryColor:
                LaterLightPalette.foregroundSecondaryColor,
            foregroundSeocndaryDisabledColor:
                LaterLightPalette.foregroundSeocndaryDisabledColor,
            secondaryPrimaryColor: LaterLightPalette.secondaryPrimaryColor,
            primaryDisabledColor: LaterLightPalette.primaryDisabledColor,
            secondaryPrimaryDisabledColor:
                LaterLightPalette.secondaryPrimaryDisabledColor,
          ),
        ],
      ),
    );
  }
}
