import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:later/database/models/record_model.dart';

import 'later_di.config.dart';

final injector = GetIt.instance;

/// This is a DI container built with [injectable](https://pub.dev/packages/injectable).
@InjectableInit(
  initializerName: r'$$$init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $$$init(injector);

@module
abstract class IsarModule {
  @preResolve
  Future<Isar> get isar => Isar.open([RecordDbModelSchema]);
}
