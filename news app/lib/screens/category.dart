import 'package:flutter/material.dart';

import '../components/news_list_builder.dart';

// ignore: must_be_immutable
class CateguryScreen extends StatelessWidget {
  CateguryScreen({required this.categury, super.key});

  String categury;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            sliver: NewsListBuilder(
              category: categury,
            ),
            padding: const EdgeInsets.all(16),
          ),
        ],
      ),
    );
  }
}

