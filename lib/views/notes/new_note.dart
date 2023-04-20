import 'package:flutter/material.dart';

class NewNote extends StatefulWidget {
  const NewNote({super.key});

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  final textFieldController = TextEditingController();
  late FocusNode myFocusNode;
  String textValue = '';

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myFocusNode.dispose();
    textFieldController.dispose();
    super.dispose();
  }

  _handleOnTextChange(String value) {
    setState(() {
      textValue = value;
    });
  }

  static const inputDecorator = InputDecoration(
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
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListTile(
          title: TextFormField(
            autofocus: true,
            focusNode: myFocusNode,
            controller: textFieldController,
            cursorColor: Colors.white,
            onChanged: (value) {
              _handleOnTextChange(value);
            },
            decoration: inputDecorator,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          )
        );
      },
    );
  }
}