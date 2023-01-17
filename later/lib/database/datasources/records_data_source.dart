import 'package:later/database/models/record_model.dart';

abstract class RecordsDataSource {
  const RecordsDataSource();

  Future<RecordDbModel> create({
    required String url,
    required String title,
    String? description,
  });
  Future<RecordDbModel> update(RecordDbModel recordDbModel);
  Future<RecordDbModel?> getById(int id);
  Stream<List<RecordDbModel>> watchAll();
  Future<String> delete(int id);
}
