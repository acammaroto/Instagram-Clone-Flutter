import 'package:flutter/material.dart';
import 'package:insagram_clone/models/highlight.dart';
import 'package:insagram_clone/services/profile.service.dart';

class Highlights extends StatelessWidget {
  final ProfileService service;
  Highlights({@required this.service});

  List<Widget> buildStoriesBlock() {
    List<Widget> result = [];
    for (Highlight item in service.getUserProfile().highlights) {
      GestureDetector widget = buildStoryHighligh(item: item);
      SizedBox space = SizedBox(width: 16);
      result.add(widget);
      result.add(space);
    }
    return result;
  }

  GestureDetector buildStoryHighligh({Highlight item}) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: item.storyImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 16, bottom: 16),
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: buildStoriesBlock(),
        ),
      ),
    );
  }
}
