import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_bottom_feild.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

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
          SizedBox(
            height: 25,
          ),
          CustomTextFeild(
            hintText: "Title",
            maxLines: 1,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            hintText: "Content",
            maxLines: 5,
          ),
          SizedBox(
            height: 30,
          ),
          CustomButtomFeild(
            data: "Edite",
          )
        ],
      ),
    );
  }
}
