import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/features/home/presentation/views/modify_note_view/modify_note_view.dart';

import '../../../../../core/utils/theme.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const ModifyNoteView());
        },
        backgroundColor: CustomColors.secondaryColor,
        child: const Icon(Icons.add_card_outlined),
      ),
      body: const NotesViewBody(),
    );
  }
}
