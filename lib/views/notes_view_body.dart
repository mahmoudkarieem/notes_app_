import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/note_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            data: "Notes",
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
