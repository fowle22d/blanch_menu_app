import 'package:blanch_menu_app/helper/demo_values.dart';
import 'package:blanch_menu_app/view/widgets/post_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

/*
 * The Wok station page gets all of the menu_items that list
 * "wok" as their station (by searching through the DemoValues
 * and adding each wok item to a new list) and then creates a
 * ListView, which creates a list of PostCards, displays them on the
 * screen and allows the user to scoll to see all of the cards.
 */
class Wok extends StatelessWidget {
  final User _user;
  const Wok({required User user}) : _user = user;
  @override
  Widget build(BuildContext context) {
    List postSpec = DemoValues.posts;
    List classicList = [];
    for (var i = 0; i < postSpec.length; i++) {
      var pos1 = postSpec[i];
      if (pos1.station == "Wok") {
        classicList.add(pos1);
      }
    }
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
        body: ListView.builder(
          itemCount: classicList.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              postData: classicList[index],
              user: _user,
            );
          },
        ),
      ),
    );
  }
}
