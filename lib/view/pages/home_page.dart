import 'package:flutter/material.dart';
import 'package:blanch_menu_app/view/widgets/post_card.dart';

// Create stateless HomePage widget
class HomePage extends StatelessWidget {
  // The constructor for the HomePage widget
  const HomePage({Key? key}) : super(key: key);

  // Create and return a Scaffold widget
  @override
  Widget build(BuildContext context) {
    // Scaffold implements basic material design visual layout structure
    // A Scaffold is basically a page (which contains bars, drawers, ets)
    return Scaffold(
      // Create AppBar (at top of page)
      appBar: AppBar(
        title: Text("Blanch Menu App"),
      ),
      // Create Body (ListView has default scroll functionality)
      // .builder() function takes itsm cont (num widgets to build) and
      // itemBuilder (a function to build given type of widget)
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PostCard();
        },
      ),
    );
  }
}
