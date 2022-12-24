import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_models/add_notes/add_notes_cubit.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({Key? key}) : super(key: key);

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: BlocProvider.of<AddNoteCubit>(context).focusNode,
      maxLines: null,
      onChanged: (value) {
        BlocProvider.of<AddNoteCubit>(context).noteData = value;
      },
      decoration: const InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
      ),
    );
  }
}
