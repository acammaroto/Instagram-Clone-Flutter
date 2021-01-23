import 'package:flutter/material.dart';
import 'package:insagram_clone/models/colors.dart';
import 'package:insagram_clone/models/textstyles.dart';

class ProfileFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 34,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(
                  "Edit Profile",
                  style: lightBlackSubtitle,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 34,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(
                  "Professional Tools",
                  style: lightBlackSubtitle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
