import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view_body.dart';

import 'package:notes_app/widgets/show_model_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: Colors.black)),
              context: context,
              builder: (context) {
                return  const ShowModelSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
