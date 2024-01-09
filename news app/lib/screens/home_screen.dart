import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/news_cards.dart';
import '../components/news_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const AppBarr(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: NewsCards()),
            const NewsListBuilder(
              category: 'world',
            ),
          ],
        ),
      ),
    );
  }
}
