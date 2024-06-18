import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_item_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // padding: EdgeInsets.only(bottom: 10),

        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomItemCard();
        });
  }
}
