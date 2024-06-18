import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom_feild.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class ShowModelSheet extends StatelessWidget {
  const ShowModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextFeild(
            hintText: "Tiltle",
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
            data: "Add",
          )
        ],
      ),
    );
  }
}
