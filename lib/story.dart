import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(child: Image.asset("images/facebookStory.jpg"), margin: EdgeInsets.all(5),),
        Icon(Icons.account_circle_rounded, color: Colors.blue,)

      ],
    );
  }

}