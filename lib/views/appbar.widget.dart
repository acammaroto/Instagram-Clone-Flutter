import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insagram_clone/models/textstyles.dart';
import 'package:insagram_clone/services/profile.service.dart';

class AppBarInstagram extends StatelessWidget {
  final ProfileService service;
  AppBarInstagram({@required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              // do something
            },
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/hamburger_menu.png"),
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              service.getUserProfile().username,
              style: h1Style,
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              //do something
            },
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                image: new DecorationImage(
                    image: AssetImage("assets/plus.png"), fit: BoxFit.cover),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //do something
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage("assets/messages.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
