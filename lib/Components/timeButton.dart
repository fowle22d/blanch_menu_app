import 'dart:io';
import 'package:flutter/material.dart';

class TimeButton extends StatelessWidget {
  final String answerText;
  TimeButton(this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 120,
      height: 50,
      margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        color: Colors.green,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
        onPressed: null,
      ),
    );
  }
}
