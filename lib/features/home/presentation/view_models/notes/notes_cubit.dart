import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/core/utils/constants.dart';
import 'package:notes_app/features/home/data/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/notes/notes_states.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitialState());

  List<NoteModel>? notes;

  void fetchAllNotes() {
    Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
  }
}
