import 'package:later/database/models/record_model.dart';

import '../models/record_model.dart';

abstract class RecordsRepository {
  Future<RecordModel> create({
    required String url,
    required String title,
    String? description,
  });
  Future<RecordModel?> update(RecordDbModel recordDbModel);
  Stream<List<RecordModel>> watchAll();
  Future<RecordModel?> getById(int id);
  Future<String> delete(int id);
}
