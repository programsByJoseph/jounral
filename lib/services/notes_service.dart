import 'package:journal/models/notes/Note.dart';

class NotesService {
  List<Note> notes = [
    Note("Note 1 " * 43),
    Note("Note 2 " * 15),
    Note("Note 3 " * 15),
    Note("Note 4 " * 15),
    Note("Note 5 " * 15),
    Note("Note 6 " * 15),
    Note("Note 7 " * 20),
    Note("Note 8 " * 15),
    Note("Note 9 " * 15),
    Note("Note 10 " * 15),
    Note("Note 11 " * 50),
    Note("Note 12 " * 15),
  ];

  List<Note> get allNotes =>
      notes;
}