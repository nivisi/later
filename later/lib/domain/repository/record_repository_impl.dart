import 'package:injectable/injectable.dart';
import 'package:later/database/datasources/records_data_source.dart';
import 'package:later/database/models/record_model.dart';
import 'package:later/domain/models/record_model.dart';
import 'package:later/domain/remap/record_remapper.dart';
import 'package:later/domain/repository/record_repository.dart';

@LazySingleton(as: RecordsRepository)
class RecordRepositoryImpl implements RecordsRepository {
  RecordRepositoryImpl(
    this._recordsDataSource,
    this._recordRemapper,
  );

  final RecordsDataSource _recordsDataSource;
  final RecordRemapper _recordRemapper;

  @override
  Future<RecordModel> create({
    required String url,
    required String title,
    String? description,
  }) async {
    if (title.isEmpty) {
      throw const FormatException('Title cannot be empty');
    }

    final dbModel = await _recordsDataSource.create(
      url: url,
      title: title,
      description: description,
    );

    final model = _recordRemapper.dataToDomain(dbModel);

    return model;
  }

  @override
  Future<RecordModel?> getById(int id) async {
    final dbModel = await _recordsDataSource.getById(id);

    if (dbModel != null) {
      final model = _recordRemapper.dataToDomain(dbModel);

      return model;
    }
  }

  @override
  Stream<List<RecordModel>> watchAll() {
    return _recordsDataSource.watchAll().asyncMap(
          (list) => list.map(
            (dbModel) {
              return _recordRemapper.dataToDomain(dbModel);
            },
          ).toList(),
        );
  }

  @override
  Future<RecordModel?> update(RecordDbModel recordDbModel) async {
    final dbModel = await _recordsDataSource.update(recordDbModel);

    if (dbModel == null) {
      return null;
    }

    final model = _recordRemapper.dataToDomain(dbModel);

    return model;
  }

  @override
  Future<String> delete(int id) {
    return _recordsDataSource.delete(id);
  }
}
