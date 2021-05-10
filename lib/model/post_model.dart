import 'package:flutter/material.dart';

/*
 * The Post Model is used in the demo_values file to create
 * each menu item (they are hard coded to follow this format).
 * Each post (which represents a menu item) contains the
 * ID (which is just the number of the current post, count
 * starts at 1), the meal (breakfast, lunch or dinner), the station
 * (classics, grill, etc.) and the menu_item (like allergen free
 * pancakes).
 */
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
