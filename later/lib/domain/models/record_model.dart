class RecordModel {
  const RecordModel({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.lastEditedAt,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String? description;
  final String? url;
  final DateTime createdAt;
  final DateTime? lastEditedAt;
}
