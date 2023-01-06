import 'package:later/domain/repository/record_repository.dart';
import '../models/record_model.dart';

class WatchAllRecordsUseCase {
  WatchAllRecordsUseCase(this.recordsRepository);

  final RecordsRepository recordsRepository;

  Stream<List<RecordModel>> call() {
    return recordsRepository.watchAll();
  }
}
