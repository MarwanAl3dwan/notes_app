import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/theme.dart';

import 'search_icon_button.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("Notes", style: CustomTextStyle.largeLight),
        Spacer(),
        SearchIconButton(),
      ],
    );
  }
}
