import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final profileImage;
  final String profileName;

  StoryWidget({required this.profileImage, required this.profileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.0,
        top: 16.0,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 36.0,
            backgroundImage: AssetImage('assets/images/insta-story.png'),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: profileImage,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            profileName,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
