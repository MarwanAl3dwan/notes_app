import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/theme.dart';

import 'search_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onTap}) : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Notes", style: CustomTextStyle.largeLight),
        const Spacer(),
        SearchIconButton(icon: icon, onTap: onTap),
      ],
    );
  }
}
