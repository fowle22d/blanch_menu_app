import 'package:blanch_menu_app/model/comment_model.dart';
import 'package:blanch_menu_app/view/widgets/commDisplay.dart';
import 'package:blanch_menu_app/view/widgets/commentCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:blanch_menu_app/helper/demo_values.dart';
import 'package:blanch_menu_app/view/widgets/post_card.dart';

// Create stateless HomePage widget
class HomePage extends StatelessWidget {
  // The constructor for the HomePage widget
  final User user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  // Create and return a Scaffold widget
  @override
  Widget build(BuildContext context) {
    CollectionReference ref = FirebaseFirestore.instance.collection("Comments");

    return Scaffold(
        appBar: AppBar(
          title: Text("Comment Feed"),
          backgroundColor: Colors.green,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: ref.snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return new ListView(
              //reverse: true,
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                var commentData2 = new CommentModel(
                    id: document.data()!['userId'],
                    user: document.data()!['userName'],
                    comment: document.data()!['text'],
                    menu_item: document.data()!['menuItem'],
                    station: document.data()!['station'],
                    time: document.data()!['time']);

                return new CommentCard(commentData: commentData2);
              }).toList(),
            );
          },
        ));
  }
}
