import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:later/database/models/record_model.dart';

import './records_data_source.dart';

@LazySingleton(as: RecordsDataSource)
class RecordsLocalDataSource extends RecordsDataSource {
  final Isar _isar;

  const RecordsLocalDataSource(this._isar);

  @override
  Future<void> create({
    required String? url,
    required String title,
    String? description,
    DateTime? lastEditedAt,
  }) async {
    if (title.isEmpty) {
      throw const FormatException('Title cannot be empty');
    }

    final record = RecordDbModel(
      url: url,
      createdAt: DateTime.now(),
      lastEditedAt: lastEditedAt,
      title: title,
      description: description,
    );

    await _isar.writeTxn(
      () => _isar.recordDbModels.put(record), // insert & updat
    );
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
