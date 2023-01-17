import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:later/database/models/record_model.dart';

import './records_data_source.dart';

@LazySingleton(as: RecordsDataSource)
class RecordsLocalDataSource extends RecordsDataSource {
  final Isar _isar;

  const RecordsLocalDataSource(this._isar);

  @override
  Future<RecordDbModel> create({
    required String url,
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

    return record;
  }

  @override
  Future<RecordDbModel> update(RecordDbModel recordDbModel) async {
    final dbModel = await _isar.recordDbModels.get(recordDbModel.id);

    if (dbModel != null) {
      dbModel
        ..title = recordDbModel.title == dbModel.title
            ? dbModel.title
            : recordDbModel.title
        ..url =
            recordDbModel.url == dbModel.url ? dbModel.url : recordDbModel.url
        ..description = recordDbModel.description == dbModel.description
            ? dbModel.description
            : recordDbModel.description
        ..lastEditedAt = DateTime.now();
    } else {
      throw const FormatException(
          'We can not update file that we don\'t have at Database.');
    }

    await _isar.writeTxn(() => _isar.recordDbModels.put(dbModel));

    return dbModel;
  }

  @override
  Future<RecordDbModel?> getById(int id) {
    final model = _isar.txn(() => _isar.recordDbModels.get(id));

    if (model == null) {
      throw const FormatException('Object with that id don\'t exist.');
    }
    return model;
  }

  @override
  Stream<List<RecordDbModel>> watchAll() {
    return _isar.recordDbModels.where().watch(fireImmediately: true);
  }

  @override
  Future<String> delete(int id) async {
    final result = await _isar.recordDbModels.delete(id);
    return 'Resul success:$result';
  }
}
