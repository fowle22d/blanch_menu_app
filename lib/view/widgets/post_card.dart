import 'package:blanch_menu_app/view/widgets/inherited_widgets/inherited_post_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:blanch_menu_app/model/post_model.dart';
import 'package:blanch_menu_app/view/pages/post_page.dart';

/**
 * PostCard takes a PostModel and user data and creates a UI widget
 * that displays the passed in menu_item info.
 */
class PostCard extends StatelessWidget {
  final PostModel postData;
  final User user;

  const PostCard({Key? key, required this.postData, required this.user})
      : super(key: key);

  Color getColor() {
    if (postData.meal == "Breakfast") {
      return Colors.pink;
    } else if (postData.meal == "Lunch") {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }

  String getLetter() {
    if (postData.meal == "Breakfast") {
      return "B";
    } else if (postData.meal == "Lunch") {
      return "L";
    } else {
      return "D";
    }
  }

  @override
  Widget build(BuildContext context) {
    //final List<PostModel> specPost = postData;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PostPage(
            postData: postData,
            user: user,
          );
        }));
      },
      child: AspectRatio(
        aspectRatio: 8 / 2,
        child: Card(
          elevation: 7,
          child: Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(4.0),
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: getColor(),
                          height: 200,
                          width: 70,
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Text(
                            getLetter(),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        Flexible(
                            child: Text(
                          postData.menu_item,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
