import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/const_variable/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'notes_cubit_state.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubitInitial());
List<NoteModel>?notes;

  fetchAllNotes() async{
    
var notesBox=Hive.box<NoteModel>(KNotesBox);

notes=notesBox.values.toList();
emit(NoteSuccess());
 

     
  }

}


