import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/constants/color_constants.dart';
import 'package:instagram_clone_ui/model/insta_story.dart';
import 'package:instagram_clone_ui/model/post_model.dart';
import 'package:instagram_clone_ui/widgets/post_list.dart';
import 'package:instagram_clone_ui/widgets/post_widget.dart';
import 'package:instagram_clone_ui/widgets/stories_list.dart';
import 'package:instagram_clone_ui/widgets/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoryModel> stories = List<StoryModel>.empty(growable: true);
  List<PostModel> posts = List<PostModel>.empty(growable: true);
  @override
  void initState() {
    super.initState();
    stories = getStories();
    posts = getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: instagramUiColor,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/main-insta.png',
          height: 160.0,
          width: 120.0,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 25.0,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/messenger-icon.jpg',
              height: 25.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              height: 110.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return StoryWidget(
                      profileImage: stories[index].profileImage,
                      profileName: stories[index].profileName);
                },
              ),
            ),
            Divider(
              thickness: 1.0,
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Postwidget(
                    profileName: posts[index].profileName,
                    uploadedImage: posts[index].uploadedImage.toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
