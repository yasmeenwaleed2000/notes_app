part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}
class NotesLoading extends NotesCubitState {}

class NotesSuccess extends NotesCubitState {
  final List<NoteModel>notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesCubitState {
  final String errMessage;
  NotesFailure({required this.errMessage});
}
