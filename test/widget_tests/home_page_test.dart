import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blanch_menu_app/view/pages/home_page.dart';

// Run in terminal with: flutter test test/widget_tests/home_page_test.dart
void main() {
  testWidgets("Testing HomePage widget", (WidgetTester tester) async {
    // Here it's wrapped in MaterialApp b/c it has to be the root for widgets lower on the tree
    // The main file (aka Blanch Menu App) returns a MaterialApp, so it doesn't need to be wrapped in one
    // Simple rule: if the widget doesn't have a MaterialApp, wrap it in one
    //await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Test: Scaffold widget
    expect(find.byType(Scaffold), findsOneWidget);

    // Test: AppBar widget
    expect(find.byType(AppBar), findsOneWidget);

    // Test: 2 Text widgets
    expect(find.byType(Text), findsNWidgets(2));

    // Test: "Blanch Menu App" text
    expect(find.text("Blanch Menu App"), findsOneWidget);

    // Test: "Hello, world!" text
    expect(find.text("Hello, world!"), findsOneWidget);
  });
}
