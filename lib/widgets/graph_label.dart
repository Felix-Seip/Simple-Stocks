import 'package:flutter/material.dart';

class GraphLabel extends StatefulWidget {
  String _text = "";
  GraphLabel(this._text);

  @override
  _GraphLabelState createState() => _GraphLabelState();
}

class _GraphLabelState extends State<GraphLabel> {
  Color buttonColor = Color.fromARGB(255, 49, 47, 47);
  Color textColor = Colors.white;

  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
        ),
        child: Text(
          widget._text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          if (!_isButtonPressed) {
            _isButtonPressed = true;
            buttonColor = Colors.white;
            textColor = Color.fromARGB(255, 49, 47, 47);
          } else {
            _isButtonPressed = false;
            buttonColor = Color.fromARGB(255, 49, 47, 47);
            textColor = Colors.white;
          }
        });
      },
    );
  }
}
