import 'package:flutter/material.dart';
import 'package:insagram_clone/models/textstyles.dart';

class Toolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Pictures",
                style: h1Style,
              ),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  //do something
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                    image: new DecorationImage(
                        image: AssetImage("assets/plus.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  //do something
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage("assets/picture.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  //do something
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage("assets/reel.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  //do something
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage("assets/tags@3x.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
