import 'package:isar/isar.dart';

part 'record_model.g.dart';

@collection
class RecordDbModel {
  RecordDbModel({
    required this.title,
    this.description,
    required this.url,
    required this.lastEditedAt,
    required this.createdAt,
  });

  String? url;
  String? description;
  DateTime createdAt;
  DateTime? lastEditedAt;
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(type: IndexType.value)
  String? title;

  @enumerated
  RecordStatus status = RecordStatus.later;
}

enum RecordStatus {
  done,
  later,
}
