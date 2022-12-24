
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/theme.dart';
import '../../notes_view/widgets/search_icon_button.dart';

class ModifyNotesAppBar extends StatelessWidget {
  const ModifyNotesAppBar({Key? key, required this.icon, this.onTap})
      : super(key: key);
  final IconData icon;
  final void Function()? onTap;

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
        SearchIconButton(icon: icon, onTap: onTap),
      ],
    );
  }
}
