import 'package:flutter/cupertino.dart';
import 'package:instagram_clone_ui/model/post_model.dart';

List<PostModel> getPosts() {
  List<PostModel> posts = List<PostModel>.empty(growable: true);
  PostModel postModel;
  postModel = PostModel(
    profileName: 'leoMessi',
    uploadedImage: AssetImage('assets/images/messi-profile.jpg'),
  );
  posts.add(postModel);
  postModel = PostModel(
    profileName: 'leoMessi',
    uploadedImage: AssetImage('assets/images/messi-profile.jpg'),
  );
  posts.add(postModel);
  postModel = PostModel(
    profileName: 'leoMessi',
    uploadedImage: AssetImage('assets/images/messi-profile.jpg'),
  );
  posts.add(postModel);
  postModel = PostModel(
    profileName: 'leoMessi',
    uploadedImage: AssetImage('assets/images/messi-profile.jpg'),
  );
  posts.add(postModel);
  return posts;
}
