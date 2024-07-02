import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubits/cubit/add_notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';

import 'custom_bottom_feild.dart';
import 'custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextFeild(
            hintText: "Title",
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            hintText: "Content",
            maxLines: 5,
            onSaved: (value) {
              supTitle = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtomFeild(
            data: "Add",
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel notes = NoteModel(
                    title: title!,
                    supTitle: supTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blueAccent.value);
                BlocProvider.of<AddNotesCubit>(context).addNotes(notes);
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
