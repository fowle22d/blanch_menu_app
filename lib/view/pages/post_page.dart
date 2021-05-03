import 'package:flutter/material.dart';
import 'package:blanch_menu_app/model/post_model.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostPage extends StatelessWidget {
  final PostModel postData;

  const PostPage({Key? key, required this.postData}) : super(key: key);
  //final Future<FirebaseApp> future = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();
    //final databaseRef = FirebaseFirestore.instance.collection("comments");
    //
    //var pos1 = postData;
    //User? user = await Authentication.signInWithGoogle(context: context);

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
                        FirebaseFirestore.instance
                            .collection(postData.station)
                            .add({
                          'userId': "Lucy",
                          "station": postData.station,
                          "menuItem": postData.menu_item,
                          "text": textcontroller.text
                        });
                        textcontroller.text = "";
                      },
                    )
                  ],
                )),
          ],
        ));
  }
}
