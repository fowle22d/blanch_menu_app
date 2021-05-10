import 'package:flutter/material.dart';

/*
 * The Comment Model is used in the commDisplay file to create
 * each comment (the values are pulled from Firebase and follow this format).
 * Each comment contains the comment ID (the user's email), user 
 * (which is the data for the user's profile picture), the menu_item and
 * station the comment is associated with, and the time it was posted.
 */
class CommentModel {
  final String id; // user email
  final String user; //data for profile picture
  final String comment;
  final String menu_item;
  final String station;
  final String time;

  const CommentModel(
      {required this.id,
      required this.user,
      required this.comment,
      required this.menu_item,
      required this.station,
      required this.time});
}
