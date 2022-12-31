import 'package:injectable/injectable.dart';
import 'package:later/database/datasources/records_data_source.dart';
import 'package:later/database/models/record_model.dart';
import 'package:later/domain/models/record_model.dart';
import 'package:later/domain/repository/record_repository.dart';

@lazySingleton
class RecordRepositoryImpl implements RecordsRepository {
  RecordRepositoryImpl({
    required this.recordsDataSurce,
  });

  final RecordsDataSource recordsDataSurce;

  @override
  Future<void> create({
    required String? url,
    required String title,
    String? description,
    DateTime? lastEditedAt,
  }) async {
    try {
      if (title.isNotEmpty) {
        await recordsDataSurce.create(
          url: url,
          title: title,
          description: description,
          lastEditedAt: lastEditedAt,
        );
      }
    } catch (_) {
      throw Exception();
    }
  }

  @override
  Future<RecordModel?> getById(int id) async {
    // final newModel = await recordsDataSurce.getById(id);
  }

  Future<RecordDbModel> _getById(
    Future<RecordDbModel> Function() getRecord,
  ) async {}

  @override
  Stream<List<RecordModel>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
