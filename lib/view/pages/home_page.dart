import 'package:flutter/material.dart';

// Create stateless HomePage widget
class HomePage extends StatelessWidget {
  // The constructor for the HomePage widget
  const HomePage({Key key}) : super(key: key);

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
      // Create Body
      body: Center(
        child: Text("Hello, world!"),
      ),
    );
  }
}
