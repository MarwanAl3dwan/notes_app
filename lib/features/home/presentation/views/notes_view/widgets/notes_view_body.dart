import 'package:flutter/material.dart';
import 'note_item.dart';
import 'notes_view_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: 40),
          NotesViewAppBar(),
          SizedBox(height: 30),
          NoteItem(),
        ],
      ),
    );
  }
}
