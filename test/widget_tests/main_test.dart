import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blanch_menu_app/main.dart';
import 'package:blanch_menu_app/view/pages/home_page.dart';

// Run in terminal with: flutter test test/widget_tests/main_test.dart
void main() {
  // Define a test, testWidgets takes name of test and function that does the testing
  // Funtion that does testing takes WidgetTester object (which lets the widget being tested be drawn)
  testWidgets("Testing Blanch Menu App widget", (WidgetTester tester) async {
    //asynch means execution of function happens in different thread
    //await means testing code shouldn't move past this line until execution is complete
    await tester.pumpWidget(BlanchMenuApp());

    //Test: MaterialApp widget presence
    expect(find.byType(MaterialApp), findsOneWidget);

    //Test: HomePage widget presence
    expect(find.byType(HomePage), findsOneWidget);
  });
}
