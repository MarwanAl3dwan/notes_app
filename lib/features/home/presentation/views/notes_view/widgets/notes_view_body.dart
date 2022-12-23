import 'package:flutter/material.dart';
import 'notes_list_view.dart';

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
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
