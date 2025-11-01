import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/const_variable/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'notes_cubit_state.dart';


class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());


  fetchAllNotes() async{
    try{
var notesBox=Hive.box<NoteModel>(KNotesBox);

List<NoteModel>notes=notesBox.values.toList();
  emit(NotesSuccess(notes: notes));

           
    }
    catch (e){
      emit(NotesFailure(errMessage: e.toString()));
     }
  }

  
  
}


