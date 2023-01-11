import '../models/record_model.dart';

abstract class RecordsRepository {
  Stream<List<RecordModel>> watchAll();
  Future<RecordModel?> getById(int id);
  Future<RecordModel> create({
    required String url,
    required String title,
    String? description,
  });
}
