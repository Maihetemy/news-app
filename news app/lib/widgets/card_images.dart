import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/items.dart';

import '../screens/category.dart';

// ignore: must_be_immutable
class CardImages extends StatelessWidget {
  CardImages({
    required this.item,
    super.key,
  });
  Item item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CateguryScreen(categury: item.word!,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(item.image!),
            ),
          ),
          height: 100,
          width: 150,
          child: Center(
            child: Text(
              item.word!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
