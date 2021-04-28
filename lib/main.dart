import 'package:blanch_menu_app/stationPage.dart';
import 'package:blanch_menu_app/screens/sign_in_screen.dart';
import 'package:flutter/material.dart'; // Material contains logic for prebuilt Flutter widgets
//import 'view/pages/home_page.dart';

// main calls runApp on the root widget for the app
void main() => runApp(BlanchMenuApp());

// Create stateless Root widget
class BlanchMenuApp extends StatelessWidget {
  // The constructor for the root widget (takes optional key parameter)
  const BlanchMenuApp({Key? key}) : super(key: key);

  // Override the build function to return a Material widget
  @override
  Widget build(BuildContext context) {
    // MaterialApp widget wraps a number of widgets commonly required for material design apps
    return MaterialApp(
      // Define the theme for the app
      // https://api.flutter.dev/flutter/material/ThemeData-class.html
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.light,
      ),
      // Define the home page for the app (code for widget can be found in /lib/view/pages/home_page.dart)
      home: SignInScreen(),
    );
  }
}
