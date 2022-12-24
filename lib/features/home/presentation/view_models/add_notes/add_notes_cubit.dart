import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_notes_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());
}
