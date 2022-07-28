import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action.dart';

class Post extends StatelessWidget {
  String poster;
  String content;

  Post(this.poster, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Icon(
                Icons.account_circle_rounded,
                size: 50,
              ),
              margin: EdgeInsets.all(6),
            ),
            Column(
              children: [
                Text(
                  poster,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [Text("3h"), Icon(Icons.add_circle_outlined)],
                )
              ],
            ),
          ],
        ),
        Row(
          children: const [
            Divider(
              height: 40,
              thickness: 5,
              indent: 20,
              color: Colors.black,
            ),
          ],
        ),
        Container(child: Text(content, style: TextStyle(fontSize: 32),), alignment: Alignment.topLeft, margin: EdgeInsets.all(10),),
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(child: Container(child: Text("100"), margin: EdgeInsets.all(3),), flex: 1,),
              Expanded(child: Container(child: Image.asset("images/like.jpg"), width: 50, margin: EdgeInsets.all(5)), flex: 1,),
              Expanded(child: Container(child: Text("100 comments"), alignment: Alignment.bottomRight, margin: EdgeInsets.all(6),), flex: 7,)
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ActionPost("images/singleLike.jpg", "like"),
              ActionPost("images/comment.jpg", "Comment"),
              ActionPost("images/share.png", "share"),

            ],
          ),
        )
      ],
    );
  }
}
