import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notes_app/features/home/data/note_model.dart';
import 'package:notes_app/features/home/presentation/views/modify_note_view/modify_note_view.dart';

import '../../../../../../core/utils/theme.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ModifyNoteView());
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.noteData,
                style: CustomTextStyle.largeDark,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  note.noteData,
                  style: CustomTextStyle.mediumSemiLight,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: CustomColors.black,
                  )),
            ),
            Text(note.date, style: CustomTextStyle.smallSemiLight),
          ],
        ),
      ),
    );
  }
}
