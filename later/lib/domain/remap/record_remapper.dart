import '../../database/models/record_model.dart';
import '../models/record_model.dart';

abstract class RecordRemapper {
  RecordModel dataToDomain(RecordDbModel recordDbModel);
}
