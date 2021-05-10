import 'package:flutter/material.dart';

/**
 * Question is a helper widget which allows text to be displayed 
 * in an aesthetically pleasing way on the app.
 */
class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20, color: Colors.green),
        textAlign: TextAlign.center,
      ),
    );
  }
}
