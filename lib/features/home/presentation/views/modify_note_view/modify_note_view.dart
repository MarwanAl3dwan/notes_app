import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/add_notes/add_notes_cubit.dart';
import 'widgets/modify_note_view_body.dart';

class ModifyNoteView extends StatelessWidget {
  const ModifyNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AddNoteCubit>(
        create: (context) => AddNoteCubit()..initCubit(),
        child: const ModifyNoteViewBody(),
      ),
    );
  }
}
