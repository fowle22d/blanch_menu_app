import 'package:blanch_menu_app/model/comment_model.dart';
import 'package:blanch_menu_app/utils/authentication.dart';
import 'package:blanch_menu_app/view/widgets/commDisplay.dart';
import 'package:blanch_menu_app/view/widgets/commentCard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:blanch_menu_app/model/post_model.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class PostPage extends StatelessWidget {
  final PostModel postData;
  final User user;

  const PostPage({Key? key, required this.postData, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(postData.menu_item),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Flexible(
                      child: TextField(
                    controller: textcontroller,
                    decoration:
                        InputDecoration(hintText: "Add a public comment..."),
                  )),
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add),
                    onPressed: () {
                      DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
                      String time = dateFormat.format(DateTime.now());

                      FirebaseFirestore.instance.collection("Comments").add({
                        'userId': user.email,
                        "userName": user.photoURL,
                        "station": postData.station,
                        "menuItem": postData.menu_item,
                        "text": textcontroller.text,
                        "time": time
                      });

                      FirebaseFirestore.instance
                          .collection(postData.station)
                          .add({
                        'userId': user.email,
                        "userName": user.photoURL,
                        "station": postData.station,
                        "menuItem": postData.menu_item,
                        "text": textcontroller.text,
                        "time": time
                      });
                      textcontroller.text = "";
                    },
                  )
                ],
              )),
          //CommentCard(commentData: commentData),
          CommDisplay(postData: postData),
        ],
      ),
    );
  }
}
