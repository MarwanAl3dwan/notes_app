import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notes_app/features/home/presentation/views/modify_note_view/modify_note_view.dart';

import '../../../../../../core/utils/theme.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

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
          color: const Color(0xffFFCC80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title:
                  const Text("Flutter tips", style: CustomTextStyle.largeDark),
              subtitle: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "build your career with marwan aladwan",
                  style: CustomTextStyle.mediumSemiLight,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: CustomColors.black,
                  )),
            ),
            const Text("May 21.2022", style: CustomTextStyle.smallSemiLight),
          ],
        ),
      ),
    );
  }
}
