import 'package:flutter/material.dart';
import 'package:insagram_clone/models/textstyles.dart';
import 'package:insagram_clone/services/profile.service.dart';

class InfoWidget extends StatelessWidget {
  final ProfileService service;
  InfoWidget({@required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(service.getUserProfile().name, style: h2Style),
          ),
          Container(
            child:
                Text(service.getUserProfile().profession, style: lightSubtitle),
          ),
          Container(
            child: Text(
              service.getUserProfile().description,
              style: lightBlackSubtitle,
            ),
          ),
        ],
      ),
    );
  }
}
