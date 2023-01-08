import 'package:injectable/injectable.dart';
import 'package:later/database/models/record_model.dart';
import 'package:later/domain/models/record_model.dart';
import 'package:later/domain/remap/record_remapper.dart';

@LazySingleton(as: RecordRemapper)
class RecordRemapperImpl implements RecordRemapper {
  @override
  RecordModel dataToDomain(RecordDbModel recordDbModel) {
    return RecordModel(
      id: recordDbModel.id,
      title: recordDbModel.title,
      url: recordDbModel.url,
      description: recordDbModel.description,
      createdAt: recordDbModel.createdAt,
      lastEditedAt: recordDbModel.lastEditedAt,
    );
  }
}
