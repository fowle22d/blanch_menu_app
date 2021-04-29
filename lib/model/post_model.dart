import 'package:flutter/material.dart';

class PostModel {
  final String id;
  final String meal;
  final String station;
  final String menu_item;

  const PostModel({
    required this.id,
    required this.meal,
    required this.station,
    required this.menu_item,
  });
}
