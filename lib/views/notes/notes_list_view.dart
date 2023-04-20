import 'package:flutter/material.dart';

import 'package:journal/models/notes/Note.dart';

class NotesListView extends StatelessWidget {
  final List<Note> notes;

  const NotesListView({
    Key? key,
    required this.notes,
  }) : super(key: key);

  static const inputDecorator = InputDecoration(
    // border: InputBorder.none
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.75, color: Colors.white),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: TextFormField(
              initialValue: notes[index].getText(),
              cursorColor: Colors.white,
              decoration: inputDecorator,
              keyboardType: TextInputType.multiline,
              maxLines: null,
            )
        );
      },
    );
  }
}