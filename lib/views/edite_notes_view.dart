import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edite_body_note_view.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNoteBody(),
    );
  }
}
