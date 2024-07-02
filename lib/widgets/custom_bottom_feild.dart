import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomButtomFeild extends StatelessWidget {
  const CustomButtomFeild({super.key, required this.data, this.onTap});
  final String data;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            data,
            style: const TextStyle(
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
