import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:notes_app/features/home/data/note_model.dart';

import '../../../../../../core/utils/theme.dart';
import '../../../view_models/add_notes/add_notes_cubit.dart';
import '../../notes_view/widgets/search_icon_button.dart';

class ModifyNotesAppBar extends StatelessWidget {
  const ModifyNotesAppBar({Key? key, required this.icon})
      : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        const SizedBox(width: 6),
        const Text("Notes", style: CustomTextStyle.largeLight),
        const Spacer(),
        SearchIconButton(
          icon: icon,
          onTap: () {
            NoteModel note = NoteModel(
              noteData: BlocProvider.of<AddNoteCubit>(context).noteData!,
              date: DateTime.now().toString(),
              color: Colors.yellow.value,
            );
            BlocProvider.of<AddNoteCubit>(context).addNote(note);
          },
        ),
      ],
    );
  }
}
