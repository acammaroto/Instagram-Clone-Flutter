import 'package:flutter/material.dart';
import 'package:insagram_clone/models/textstyles.dart';
import 'package:insagram_clone/services/profile.service.dart';

class Headline extends StatelessWidget {
  final ProfileService service;
  Headline({@required this.service});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
              image: DecorationImage(
                  image: AssetImage("assets/profileimage.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Container(
            child: Column(
              children: [
                Text(
                  service.getUserProfile().postCounter,
                  style: h1Style,
                ),
                Text(
                  "post",
                  style: h5Style,
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            child: Column(
              children: [
                Text(
                  service.getUserProfile().followerCounter,
                  style: h1Style,
                ),
                Text(
                  "follower",
                  style: h5Style,
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            child: Column(
              children: [
                Text(
                  service.getUserProfile().followingCounter,
                  style: h1Style,
                ),
                Text(
                  "following",
                  style: h5Style,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
