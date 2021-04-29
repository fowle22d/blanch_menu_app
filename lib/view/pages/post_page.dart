import 'package:flutter/material.dart';
import 'package:blanch_menu_app/model/post_model.dart';

class PostPage extends StatelessWidget {
  final PostModel postData;

  const PostPage({Key? key, required this.postData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blanch Menu App")),
      body: Center(child: Text(postData.menu_item)),
    );
  }
}
