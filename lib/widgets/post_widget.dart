import 'package:flutter/material.dart';

class Postwidget extends StatelessWidget {
  final String profileName;
  final uploadedImage;

  Postwidget({
    required this.profileName,
    required this.uploadedImage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16.0,
      ),
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
                  backgroundImage: AssetImage('assets/images/insta-story.png'),
                  child: CircleAvatar(
                    radius: 13.0,
                    backgroundImage: AssetImage(uploadedImage),
                  ),
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                profileName,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
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
          Image.asset(uploadedImage),
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
                    icon: Image(
                      image: AssetImage(
                        'assets/images/comment1.png',
                      ),
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Image(
                    image: AssetImage(
                      'assets/images/direct-message.png',
                    ),
                    height: 25.0,
                    color: Colors.black87,
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage(
                        'assets/images/save-icon.png',
                      ),
                    )),
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
    );
  }
}
