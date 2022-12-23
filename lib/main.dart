import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/utils/theme.dart';
import 'features/home/presentation/views/notes_view/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,

      home: const NotesView(),
    );
  }
}
