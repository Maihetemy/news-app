import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/items.dart';

import '../widgets/card_images.dart';

// ignore: must_be_immutable
class NewsCards extends StatelessWidget {
  NewsCards({super.key});
  List<Item> category = [
    Item(image: 'assets/science.avif', word: 'Science'),
    Item(image: 'assets/health.avif', word: 'Health'),
    Item(image: 'assets/technology.jpeg', word: 'Technology'),
    Item(image: 'assets/science.avif', word: 'Science'),
    Item(image: 'assets/health.avif', word: 'Health'),
    Item(image: 'assets/technology.jpeg', word: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int i) {
            return CardImages(
              item: category[i],
            );
          }),
    );
  }
}
