import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _clickHandler;

  Answer(this._answer, this._clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(_answer),
        onPressed: _clickHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
