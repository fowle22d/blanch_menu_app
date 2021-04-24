import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blanch_menu_app/helper/demo_values.dart';
import 'package:blanch_menu_app/view/widgets/post_card.dart';

void main() {
  testWidgets("Testing PostCard widget", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PostCard()));

    //Test: Finds AspectRatio
    expect(find.byType(AspectRatio), findsOneWidget);

    //Test: Finds Card
    expect(find.byType(Card), findsOneWidget);

    //Test: Finds text user name
    expect(find.text(DemoValues.userName), findsOneWidget);

    //Test: Finds text user email
    expect(find.text(DemoValues.userEmail), findsOneWidget);

    //Test: Finds text post title
    expect(find.text(DemoValues.postTitle), findsOneWidget);

    //Test: Finds text post text
    expect(find.text(DemoValues.postText), findsOneWidget);

    //Test: Finds text post time
    expect(find.text(DemoValues.postTime), findsOneWidget);
  });
}
