import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:blanch_menu_app/Menu/classics.dart';
import 'package:blanch_menu_app/Menu/global.dart';
import 'package:blanch_menu_app/Menu/halal.dart';
import 'package:blanch_menu_app/Menu/harvest.dart';
import 'package:blanch_menu_app/Menu/kosher.dart';
import 'package:blanch_menu_app/Menu/wok.dart';
import 'Menu/grill.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final User user;

  Answer(this.answerText, this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(48.0, 7.0, 48.0, 7.0),
      width: double.infinity,
      height: 60.0,
      child: RaisedButton(
        color: Colors.green,
        child: Text(answerText),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        onPressed: () {
          if (answerText == "Classics") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Classics(user: user);
                },
              ),
            );
          } else if (answerText == "Grill") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Grill(user: user);
                },
              ),
            );
          } else if (answerText == "Global") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Global(user: user);
                },
              ),
            );
          } else if (answerText == "Wok") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Wok(user: user);
                },
              ),
            );
          } else if (answerText == "Baraka-Halal") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Halal(user: user);
                },
              ),
            );
          } else if (answerText == "Harvest & Desserts") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Harvest(user: user);
                },
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Kosher(user: user);
                },
              ),
            );
          }
        },
      ),
    );
  }
}
