import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';
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
          CustomButtomFeild()
        ],
      ),
    );
  }
}

class CustomButtomFeild extends StatelessWidget {
  const CustomButtomFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
