import 'package:isar/isar.dart';

part 'record_model.g.dart';

@collection
class RecordModel {
  RecordModel({
    this.title,
    this.description,
    required this.url,
    required this.lastEditedAt,
  }) : createdAt = DateTime.now();

  final String url;
  final String? description;
  final DateTime createdAt;
  final DateTime lastEditedAt;
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
