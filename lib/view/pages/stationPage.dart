import 'package:blanch_menu_app/view/pages/home_page.dart';
import 'package:blanch_menu_app/view/pages/user_info_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../question.dart';
import '../../answer.dart';

/**
 * Station Page displays the station names as buttons, allowing users 
 * to select a station, which will then redirect them to the 
 * respective menu page. Uses the question and answer classes to 
 * make buttons display correctly.
 */
class StationPage extends StatelessWidget {
  const StationPage({Key? key, required User user})
      : _user = user,
        super(key: key);
  final User _user;

  @override
  Widget build(BuildContext ctx) {
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
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                child: Icon(Icons.person),
                onTap: () {
                  Navigator.push(ctx,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return UserInfoScreen(user: _user);
                    ;
                  }));
                  // UserInfoScreen(user: _user);
                },
              ),
            )
          ],
        ),
        body: Column(children: [
          Container(
            height: 20,
          ),
          //Image.asset('assets/mhcLogo.png'),
          Flexible(
            flex: 1,
            child: Image.asset(
              'assets/mhc.png',
              height: 50,
            ),
          ),
          Question("Select a Station"),

          Answer(stations[0], _user),
          Answer(stations[1], _user),
          Answer(stations[2], _user),
          Answer(stations[3], _user),
          Answer(stations[4], _user),
          Answer(stations[5], _user),
          Answer(stations[6], _user),
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
                      return HomePage(
                        user: _user,
                      );
                    },
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
