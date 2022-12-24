import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/core/utils/constants.dart';
import 'package:notes_app/features/home/data/note_model.dart';

import 'add_notes_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());

  String? noteData;
  final FocusNode focusNode = FocusNode();

  void initCubit() {
    focusNode.requestFocus();
  }

  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccessState());
    } catch (error) {
      emit(AddNoteErrorState(error.toString()));
    }
  }

}
