import 'package:blanch_menu_app/helper/demo_values.dart';
import 'package:blanch_menu_app/view/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:blanch_menu_app/Components/timeButton.dart';

class Halal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List postSpec = DemoValues.posts;
    List classicList = [];
    for (var i = 0; i < postSpec.length; i++) {
      var pos1 = postSpec[i];
      if (pos1.station == "Halal") {
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
            return PostCard(postData: classicList[index]);
          },
        ),
      ),
    );
  }
}
