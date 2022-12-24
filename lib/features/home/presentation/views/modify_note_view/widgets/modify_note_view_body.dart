import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:notes_app/features/home/presentation/view_models/add_notes/add_notes_cubit.dart';
import 'package:notes_app/features/home/presentation/view_models/add_notes/add_notes_states.dart';

import 'modify_note_app_bar.dart';
import 'note_form.dart';

class ModifyNoteViewBody extends StatelessWidget {
  const ModifyNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: BlocConsumer<AddNoteCubit, AddNoteStates>(
          listener: (context, state) {
            if (state is AddNoteSuccessState) {
              Get.back();
            }
          },
          builder: (context, state) {
            return state is AddNoteLoadingState
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 40),
                      ModifyNotesAppBar(icon: Icons.check, onTap: () {}),
                      const SizedBox(height: 20),
                      const NoteForm(),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
