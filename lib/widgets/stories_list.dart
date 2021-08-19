import 'package:flutter/cupertino.dart';
import 'package:instagram_clone_ui/model/insta_story.dart';

List<StoryModel> getStories() {
  List<StoryModel> story = List<StoryModel>.empty(growable: true);
  StoryModel storyModel;
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/pizza.jpg'.toString(),
      ),
      profileName: 'pizza1');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/rajesh-hamal.jpg'.toString(),
      ),
      profileName: 'rajeshdai');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/momo.jpeg'.toString(),
      ),
      profileName: 'ilovemomo');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/ronaldo.jpg'.toString(),
      ),
      profileName: 'ronaldo');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/iphone12.jpg'.toString(),
      ),
      profileName: 'gadgets');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/pizza.jpg'.toString(),
      ),
      profileName: 'iamfoodie');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/tiger.jpg'.toString(),
      ),
      profileName: 'animals');
  story.add(storyModel);
  return story;
}
