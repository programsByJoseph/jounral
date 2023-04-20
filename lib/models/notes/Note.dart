class Note {
  String _text = "";

  Note(String text) {
    _text = text;
  }

  void setText(String text) {
    _text = text;
  }

  String getText() {
    return _text;
  }
}