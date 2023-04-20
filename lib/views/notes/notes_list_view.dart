import 'package:flutter/material.dart';

import 'package:journal/models/notes/Note.dart';

class NotesListView extends StatelessWidget {
  final List<Note> notes;

  const NotesListView({
    Key? key,
    required this.notes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(notes[index].getText())
        );
      },
    );
  }
}