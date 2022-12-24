import 'package:flutter/material.dart';

import 'modify_note_app_bar.dart';

class ModifyNoteViewBody extends StatefulWidget {
  const ModifyNoteViewBody({Key? key}) : super(key: key);

  @override
  State<ModifyNoteViewBody> createState() => _ModifyNoteViewBodyState();
}

class _ModifyNoteViewBodyState extends State<ModifyNoteViewBody> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            ModifyNotesAppBar(icon: Icons.check, onTap: () {}),
            const SizedBox(height: 20),
            TextFormField(
              focusNode: focusNode,
              maxLines: null,
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
