import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'later_di.config.dart';

final injector = GetIt.instance;

/// This is a DI container built with [injectable](https://pub.dev/packages/injectable).
@InjectableInit(
  initializerName: r'$$$init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $$$init(injector);
