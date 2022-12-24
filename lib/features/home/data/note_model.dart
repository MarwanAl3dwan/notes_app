import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String noteData;
  @HiveField(1)
  final String date;
  @HiveField(2)
  final int color;

  NoteModel({
    required this.noteData,
    required this.date,
    required this.color,
  });
}
