import 'package:flutter/material.dart';
import 'package:blanch_menu_app/Components/timeButton.dart';

class Harvest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var saldItems = [];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("The Blanch App"),
              backgroundColor: Colors.green,
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context, false),
              )),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimeButton("Breakfast 7:15-9:15am"),
                  TimeButton("Lunch 11am-2pm"),
                  TimeButton("Dinner 5pm-8pm"),
                ],
              )
            ],
          )),
    );
  }
}
