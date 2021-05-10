import 'package:blanch_menu_app/model/comment_model.dart';
import 'package:flutter/material.dart';

/**
 * CommentCard takes in a comment model object, returning a card widget 
 * that displays the information in a comment format. These are then
 * displayed in the ListView in CommDisplay.
 */
class CommentCard extends StatelessWidget {
  final CommentModel commentData;
  const CommentCard({Key? key, required this.commentData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    // String time = dateFormat.format(commentData.time);

    return Card(
      elevation: 7,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
        width: 340,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Material(
                  color: Colors.grey.withOpacity(0.3),
                  child: Image.network(
                    commentData.user,
                    width: 45,
                    height: 45,
                    //fit: 30,
                  ),
                ),
              ),
              Container(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      commentData.id,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Text(
                      commentData.time,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: 18,
                  ),
                ],
              )
            ],
          ),
          Container(
            width: 340,
            child: Text(commentData.comment),
          ),
          Container(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Text(
                  commentData.station,
                  style: TextStyle(color: Colors.teal, fontSize: 15),
                )),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.teal,
                ),
                Container(
                    width: 250,
                    child: Text(
                      commentData.menu_item,
                      style: TextStyle(color: Colors.teal, fontSize: 15),
                    )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
