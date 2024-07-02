import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.hintText,
    this.maxLines, this.onSaved,
  });
  final String? hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
    return TextFormField(
      onSaved: onSaved,
        validator: (value){
        if(value?.isEmpty ??true){
          return "Field is required";
        }else{
          return null;
        }
        },
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hintText,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kPrimaryColor),
            )));
  }
}
