import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:later/database/models/record_model.dart';

import './records_data_source.dart';

class RecordsLocalDataSource extends RecordsDataSource {
  final Isar _isar;

  const RecordsLocalDataSource(this._isar);

  @override
  Future<RecordDbModel> create({
    required String url,
    String? title,
    String? description,
  }) async {
    if (url.isEmpty) {
      throw const FormatException('Page adress cannot be empty');
    }

    final record = RecordDbModel(
      url: url,
      createdAt: DateTime.now(),
      lastEditedAt: DateTime.now(),
    )
      ..title = title
      ..description = description;

    await _isar.writeTxn(
      () => _isar.recordDbModels.put(record), // insert & updat
    );

    return record;
  }

  @override
  Future<RecordDbModel?> getById(int id) async {
    return await _isar.writeTxn(() => _isar.recordDbModels.get(id));
  }

  @override
  Stream<List<RecordDbModel>> watchAll() {
    return _isar.recordDbModels.where().watch(fireImmediately: true);
  }
}
