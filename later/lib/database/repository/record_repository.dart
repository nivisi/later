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
    } catch (error) {
      throw Exception();
    }
  }

  @override
  Future<RecordModel?> getById(int id) async {
    try {
      final dbModel = await recordsDataSurce.getById(id);
      if (dbModel != null) {
        final model = RecordModel(
          createdAt: dbModel!.createdAt,
          title: dbModel.title,
          url: dbModel.url,
          description: dbModel.description,
          lastEditedAt: dbModel.lastEditedAt,
          id: dbModel.id,
        );
        return model;
      }
    } catch (error) {
      throw Exception();
    }
  }

  @override
  Stream<List<RecordModel>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
