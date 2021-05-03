import 'package:flutter/material.dart';

class PostModel {
  final String id;
  final String user;
  final String comment;
  final String rating;

  const PostModel({
    required this.id,
    required this.user,
    required this.comment,
    required this.rating,
  });
}
