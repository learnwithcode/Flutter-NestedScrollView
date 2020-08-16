import 'package:flutter/material.dart';
import 'package:insta/data/data.dart';
import 'package:insta/models/post_model.dart';

class PostGrid extends StatelessWidget {
  _buildPosts(BuildContext context, Post post) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            post.photo,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        controller: ScrollController(),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        crossAxisCount: 3,
        children: List.generate(
          posts.length,
          (index) {
            Post post = posts[index];
            return _buildPosts(context, post);
          },
        ),
      ),
    );
  }
}
