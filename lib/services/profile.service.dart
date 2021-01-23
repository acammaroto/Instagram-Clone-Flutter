import 'package:flutter/material.dart';
import 'package:insagram_clone/models/highlight.dart';
import 'package:insagram_clone/models/post.dart';
import 'package:insagram_clone/models/profile.dart';

class ProfileService {
  Profile getUserProfile() {
    String username = "angelo.cammaroto";
    String name = "Angelo Cammaroto 🦖";
    String postCounter = "290";
    String followerCounter = "10k";
    String followingCounter = "170";
    String profession = "Entrepreneur";
    String description =
        "👨‍💻Software Developer @bnpparibas\n💡I share daily tips for personal growth";
    List<Highlight> highlights = getUserHighlights();
    List<Post> posts = getUserPosts();
    return Profile(
        username: username,
        name: name,
        postCounter: postCounter,
        followerCounter: followerCounter,
        followingCounter: followingCounter,
        profession: profession,
        description: description,
        posts: posts,
        highlights: highlights);
  }

  List<Post> getUserPosts() {
    return [
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
      Post(image: AssetImage("assets/post.jpg")),
    ];
  }

  List<Highlight> getUserHighlights() {
    return [
      Highlight(storyImage: AssetImage("assets/highlights.png")),
      Highlight(storyImage: AssetImage("assets/highlights.png")),
      Highlight(storyImage: AssetImage("assets/highlights.png")),
      Highlight(storyImage: AssetImage("assets/highlights.png")),
      Highlight(storyImage: AssetImage("assets/highlights.png")),
      Highlight(storyImage: AssetImage("assets/highlights.png")),
      Highlight(storyImage: AssetImage("assets/highlights.png")),
    ];
  }
}
