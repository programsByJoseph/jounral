import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:journal/notes/new_note.dart';

void main() {
  const testKey =  Key('1');
  var testWidget = MaterialApp(
    home: Material(
      child: Column(
        children: const <Widget>[
          NewNote(key: testKey)
        ],
      ),
    )
  );

  testWidgets('widget should render ', (widgetTester) async {
    await widgetTester.pumpWidget(testWidget);
  });

  testWidgets('Should find Note widget', (widgetTester) async {
    await widgetTester.pumpWidget(testWidget);

    var noteWidget = find.byKey(testKey);
    expect(noteWidget, findsOneWidget);
  });


  testWidgets('Should find TextField', (widgetTester) async {
    await widgetTester.pumpWidget(testWidget);

    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
  });
}