import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_button_model_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
             builder: (context){
              return const AddButtonModelSheet();

            });
        },
      child: const Icon(Icons.add),
      ),
      
     body: NotesViewBody(),
    );
  }
}

