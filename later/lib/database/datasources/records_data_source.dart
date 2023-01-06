import 'package:later/database/models/record_model.dart';

abstract class RecordsDataSource {
  const RecordsDataSource();

  Stream<List<RecordDbModel>> watchAll();
  Future<void> create({
    required String url,
    required String title,
    String? description,
  });
  Future<RecordDbModel?> getById(int id);
}
