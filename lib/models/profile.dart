import 'dart:core';

import 'package:insagram_clone/models/highlight.dart';
import 'package:insagram_clone/models/post.dart';

class Profile {
  String username;
  String name;
  String postCounter;
  String followerCounter;
  String followingCounter;
  String profession;
  String description;
  List<Highlight> highlights;
  List<Post> posts;

  Profile({
    this.username,
    this.name,
    this.postCounter,
    this.followerCounter,
    this.followingCounter,
    this.profession,
    this.description,
    this.highlights,
    this.posts,
  });
}
