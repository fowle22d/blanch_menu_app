import 'package:blanch_menu_app/model/comment_model.dart';
import 'package:blanch_menu_app/model/post_model.dart';
import 'package:blanch_menu_app/view/widgets/commentCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CommDisplay extends StatelessWidget {
  final PostModel postData;

  const CommDisplay({Key? key, required this.postData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CollectionReference ref =
        FirebaseFirestore.instance.collection(postData.station);
    Query itemComments = ref.where("menuItem", isEqualTo: postData.menu_item);

    return StreamBuilder<QuerySnapshot>(
      stream: itemComments.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return new Expanded(
            child: ListView(
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
        ));
      },
    );
  }
}
