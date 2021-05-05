import 'package:flutter/material.dart';

class CommentModel {
  final String id;
  final String user;
  final String comment;
  //final String rating;
  final String menu_item;
  final String station;
  final String time;

  const CommentModel(
      {required this.id,
      required this.user,
      required this.comment,
      //required this.rating,
      required this.menu_item,
      required this.station,
      required this.time});
}
