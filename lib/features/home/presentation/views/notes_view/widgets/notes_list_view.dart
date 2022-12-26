import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/home/data/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/notes/notes_states.dart';

import '../../../view_models/notes/notes_cubit.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView.builder(
            itemCount: notes.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: NoteItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
