import 'package:flutter/material.dart';

import 'widgets/modify_note_view_body.dart';

class ModifyNoteView extends StatelessWidget {
  const ModifyNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ModifyNoteViewBody(),
    );
  }
}
