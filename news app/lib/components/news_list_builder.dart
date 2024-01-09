import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/items.dart';
import 'package:news_app_ui_setup/components/post_list.dart';

import '../services/news_services.dart';

// ignore: must_be_immutable
class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({required this.category, super.key});

  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

// ignore: prefer_typing_uninitialized_variables

class _NewsListBuilderState extends State<NewsListBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var request;
  @override
  void initState() {
    super.initState();
    request = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostItem>>(
      future: request,
      builder: (context, snapshot) {
        print(snapshot);
        if (snapshot.hasData) {
          return PostList(
            postitem: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Text('Ooops! There was an error.'),
              ));
        } else {
          return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
