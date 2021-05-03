import 'package:blanch_menu_app/view/widgets/inherited_widgets/inherited_post_model.dart';
import 'package:flutter/material.dart';
import 'package:blanch_menu_app/helper/demo_values.dart';
import 'package:blanch_menu_app/model/post_model.dart';
import 'package:blanch_menu_app/view/pages/post_page.dart';

class PostCard extends StatelessWidget {
  final PostModel postData;

  const PostCard({Key? key, required this.postData}) : super(key: key);

  Color getColor() {
    if (postData.meal == "Breakfast") {
      return Colors.pink;
    } else if (postData.meal == "Lunch") {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }

  String getLetter() {
    if (postData.meal == "Breakfast") {
      return "B";
    } else if (postData.meal == "Lunch") {
      return "L";
    } else {
      return "D";
    }
  }

  @override
  Widget build(BuildContext context) {
    //final List<PostModel> specPost = postData;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PostPage(postData: postData);
        }));
      },
      child: AspectRatio(
        aspectRatio: 8 / 2,
        child: Card(
          elevation: 7,
          child: Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(4.0),
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: getColor(),
                          height: 200,
                          width: 70,
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Text(
                            getLetter(),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        Text(
                          postData.menu_item,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),

                    // _Post(),
                    // Divider(color: Colors.grey),
                    // _MenuItem(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class _Post extends StatelessWidget {
//   const _Post({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 3,
//       child: Row(children: <Widget>[_Station(), _Meal()]),
//     );
//   }
// }

// class _Station extends StatelessWidget {
//   const _Station({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final PostModel postData = InheritedPostModel.of(context).postData;
//     final TextStyle? stationTheme = Theme.of(context).textTheme.headline5;
//     final String station = postData.station;

//     return Expanded(
//       flex: 3,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 4.0),
//         child: Text(station, style: stationTheme),
//       ),
//     );
//   }
// }

// class _Meal extends StatelessWidget {
//   const _Meal({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final PostModel postData = InheritedPostModel.of(context).postData;
//     final TextStyle? mealTheme = Theme.of(context).textTheme.headline5;
//     final String meal = postData.meal;

//     return Expanded(
//       flex: 3,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 4.0),
//         child: Text(meal, style: mealTheme),
//       ),
//     );
//   }
// }

// class _MenuItem extends StatelessWidget {
//   const _MenuItem({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final PostModel postData = InheritedPostModel.of(context).postData;
//     final TextStyle? menuItemTheme = Theme.of(context).textTheme.headline5;
//     final String menuItem = postData.menu_item;

//     return Expanded(flex: 7, child: Text(menuItem, style: menuItemTheme));
//   }
// }
