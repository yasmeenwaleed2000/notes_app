import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/const_variable/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simle_bloc_observer.dart';
import 'package:notes_app/views/notes_views.dart';
void main()async {
   //WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
Bloc.observer=SimleBlocObserver();
 Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNotesBox);
  
 
  runApp(const NotesApp ());
}



class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      home:const NotesView(),
    );
  }
}