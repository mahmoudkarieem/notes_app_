import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNotes(NoteModel notesModel){
    emit(AddNotesLoading());
 try {
   var notesBox=Hive.box<NoteModel>(kNotesBox);
   notesBox.add(notesModel);
   emit(AddNotesSuccess());
 } catch (e) {
   emit(AddNotesFailure(e.toString()));
 }
  }
}
