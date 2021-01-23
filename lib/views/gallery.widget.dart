import 'package:flutter/material.dart';
import 'package:insagram_clone/models/post.dart';
import 'package:insagram_clone/services/profile.service.dart';

class Gallery extends StatelessWidget {
  final ProfileService service;
  Gallery({@required this.service});

  Column generateGrid({List<Post> posts}) {
    int rowsCount = (posts.length / 3).ceil();
    Column result = Column(
      children: generateRows(size: rowsCount, posts: posts),
    );
    return result;
  }

  List<Row> generateRows({int size, List<Post> posts}) {
    List<Row> rows = [];
    for (var i = 0; i < size; i++) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: getChildren(startIndex: i, posts: posts),
      );
      rows.add(row);
    }
    return rows;
  }

  List<Widget> getChildren({int startIndex, List<Post> posts}) {
    List<Widget> result = [];
    int endIndex = startIndex + 3;
    for (var index = startIndex; index < endIndex; index++) {
      print(index);
      result.add(
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5),
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: posts[index].image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    List<Post> posts = service.getUserProfile().posts;
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: generateGrid(posts: posts));
  }
}
