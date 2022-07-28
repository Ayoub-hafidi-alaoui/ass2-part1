import 'package:flutter/cupertino.dart';

class ActionPost extends StatelessWidget {

  String icon;
  String title;

  ActionPost(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(child: Image.asset(icon), width: 30, padding: EdgeInsets.all(5),),
        Text(title)
      ],
    );
  }

}