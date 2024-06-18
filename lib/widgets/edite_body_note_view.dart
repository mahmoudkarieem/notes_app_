import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            data: "Edite Notes",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
