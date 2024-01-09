import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/items.dart';

import '../widgets/post.dart';

// ignore: must_be_immutable
class PostList extends StatelessWidget {
  final List<PostItem> postitem;
  const PostList({super.key, required this.postitem});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: postitem.length,
        (BuildContext context, int index) {
          return Post(postitem: postitem[index],);
        },        
      ),
    );
  }
}

// Post(postitem[index])