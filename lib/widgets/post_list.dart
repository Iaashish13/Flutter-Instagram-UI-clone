import 'package:instagram_clone_ui/model/post_model.dart';

List<PostModel> getPosts() {
  List<PostModel> post = List<PostModel>.empty(growable: true);
  PostModel postModel;
  postModel = PostModel(
    profileName: 'leoMessi',
    uploadedImage: 'assets/images/messi-profile.jpg',
  );
  post.add(postModel);
  postModel = PostModel(
    profileName: 'rajeshdai',
    uploadedImage: 'assets/images/rajesh-hamal.jpg',
  );
  post.add(postModel);
  postModel = PostModel(
    profileName: 'ilovemomo',
    uploadedImage: 'assets/images/momo.jpeg',
  );
  post.add(postModel);
  postModel = PostModel(
    profileName: 'iamfoodie',
    uploadedImage: 'assets/images/pizza.jpg',
  );
  post.add(postModel);
  postModel = PostModel(
    profileName: 'ronaldo',
    uploadedImage: 'assets/images/ronaldo.jpg',
  );
  post.add(postModel);
  postModel = PostModel(
    profileName: 'animals',
    uploadedImage: 'assets/images/tiger.jpg',
  );

  post.add(postModel);
  postModel = PostModel(
    profileName: 'gadgets',
    uploadedImage: 'assets/images/macbook-pro.jpg',
  );
  post.add(postModel);
  postModel = PostModel(
    profileName: 'gadgets',
    uploadedImage: 'assets/images/iphone12.jpg',
  );
  post.add(postModel);

  return post;
}
