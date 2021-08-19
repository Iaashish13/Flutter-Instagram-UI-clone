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
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  storyModel = StoryModel(
      profileImage: AssetImage(
        'assets/images/messi-profile.jpg'.toString(),
      ),
      profileName: 'leoMessi');
  story.add(storyModel);
  return story;
}
