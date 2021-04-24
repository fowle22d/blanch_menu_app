import 'package:flutter/material.dart';
import 'package:blanch_menu_app/helper/demo_values.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 3,
      child: Card(
        elevation: 2,
        child: Container(
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              _Post(),
              Divider(color: Colors.grey),
              _PostDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_PostTitle(), _PostText()]),
    );
  }
}

class _PostTitle extends StatelessWidget {
  const _PostTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleTheme = Theme.of(context).textTheme.headline5;
    final String title = DemoValues.postTitle;

    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Text(title, style: titleTheme),
      ),
    );
  }
}

class _PostText extends StatelessWidget {
  const _PostText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle pTextTheme = Theme.of(context).textTheme.subtitle1;
    final String pText = DemoValues.postText;

    return Expanded(flex: 7, child: Text(pText, style: pTextTheme));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _UserNameAndEmail(),
        _PostTimeStamp(),
      ],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle nameTheme = Theme.of(context).textTheme.subtitle;
    final TextStyle emailTheme = Theme.of(context).textTheme.body1;

    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(DemoValues.userName, style: nameTheme),
            SizedBox(height: 2.0),
            Text(DemoValues.userEmail, style: emailTheme),
          ],
        ),
      ),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  const _PostTimeStamp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle timeTheme = Theme.of(context).textTheme.button;

    return Expanded(
      flex: 2,
      child: Text(DemoValues.postTime, style: timeTheme),
    );
  }
}
