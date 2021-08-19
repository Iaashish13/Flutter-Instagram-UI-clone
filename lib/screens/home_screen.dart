import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/constants/color_constants.dart';
import 'package:instagram_clone_ui/model/insta_story.dart';
import 'package:instagram_clone_ui/widgets/stories_list.dart';
import 'package:instagram_clone_ui/widgets/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoryModel> stories = List<StoryModel>.empty(growable: true);
  @override
  void initState() {
    super.initState();
    stories = getStories();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: CircleAvatar(
                          radius: 16.0,
                          backgroundImage:
                              AssetImage('assets/images/insta-story.png'),
                          child: CircleAvatar(
                            radius: 13.0,
                            backgroundImage:
                                AssetImage('assets/images/messi-profile.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        'leoMessi',
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/messi-profile.jpg',
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            size: 25.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/comment1.png'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/direct-message.png',
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/save-icon.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'Liked by ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'shulabhgrey14 ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '123,456 others',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'leoMessi ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'And this is my first Instagram Post!! ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                            ),
                            children: [
                              TextSpan(
                                text: 'View all 100 comments',
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
