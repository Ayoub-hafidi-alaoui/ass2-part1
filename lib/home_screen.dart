import 'package:assignement2/post.dart';
import 'package:assignement2/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String HOME_SCREEN = "home";
  List<Post> posts = [
    Post("ayoub", "content1"),
    Post("ayoub", "content2"),
    Post("ayoub", "content3"),
    Post("ayoub", "content4"),
    Post("ayoub", "content5"),
    Post("ayoub", "content6"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Story()),
              Expanded(child: Story()),
              Expanded(child: Story()),
              Expanded(child: Story()),
              Expanded(child: Story()),
            ]
          ),
          Expanded(
            child: ListView.builder(itemCount: posts.length, itemBuilder: (_, index) => posts[index] ,),
          )

        ],
      ),
    );
  }

}