import 'package:blanch_menu_app/view/pages/home_page.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class StationPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    //var stations = ["Grill", "Global", "Halal"];
    var stations = [
      "Classics",
      "Grill",
      "Global",
      "Wok",
      "Baraka-Halal",
      "Harvest & Desserts",
      "L'Chaim-Kosher",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Blanch App"),
          backgroundColor: Colors.green,
        ),
        body: Column(children: [
          Question("SELECT A STATION"),
          Answer(stations[0]),
          Answer(stations[1]),
          Answer(stations[2]),
          Answer(stations[3]),
          Answer(stations[4]),
          Answer(stations[5]),
          Answer(stations[6]),
          RaisedButton(
              color: Colors.green,
              child: Text("Comment Feed"),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(
                  ctx,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return HomePage();
                    },
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
