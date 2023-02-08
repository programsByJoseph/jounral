import 'package:flutter/material.dart';
import 'package:journal/views/notes/new_note.dart';
import 'package:journal/views/notes/notes_list_view.dart';

import '../../models/notes/Note.dart';
import '../../services/notes_service.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  late final NotesService _notesService;
  late final List<Note> _notes;

  @override
  void initState() {
    _notesService = NotesService();
    _notes = _notesService.allNotes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          NotesListView(
            notes: _notes
          ),
          const NewNote()
        ],
      ),
    );
  }
}
