import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:later/presentation/feature/home/home_page.dart';
import 'package:later/presentation/feature/record/record_page.dart';

// So we only need to import this file w/o additionally importing auto_route
export 'package:auto_route/auto_route.dart';

part 'later_router.gr.dart';

/// This is a router provided by the [AutoRoute](https://pub.dev/packages/auto_route) library.
///
///
/// [Here](https://pub.dev/packages/auto_route#navigating-between-screens)
/// you can find how to navigate between the routes.
@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: RecordPage),
  ],
)
class $LaterRouter extends _$$LaterRouter {}
