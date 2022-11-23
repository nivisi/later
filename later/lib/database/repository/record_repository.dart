import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:later/database/models/record_model.dart';

@lazySingleton
class RecordRepository {
  late final Isar _isar;

  // We must preinitialize it first
  @FactoryMethod(preResolve: true)
  static Future<RecordRepository> init() async {
    final repo = RecordRepository()
      .._isar = await Isar.open([RecordModelSchema]);

    return repo;
  }

  Future<RecordModel> create({required String title}) async {
    if (title.isEmpty) {
      throw const FormatException('Title cannot be empty');
    }

    final record = RecordModel()..title = title;

    await _isar.writeTxn(
      () => _isar.recordModels.put(record), // insert & update
    );

    return record;
  }

  Stream<List<RecordModel>> watchAll() {
    return _isar.recordModels.where().watch(fireImmediately: true);
  }
}
