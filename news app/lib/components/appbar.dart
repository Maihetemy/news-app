import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisSize: MainAxisSize.min, children: [
      Text(
        'News',
        style: TextStyle(
          color: Colors.black,
          fontSize: 23,
        ),
      ),
      Text(
        'Cloud',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 23,
        ),
      ),
    ]);
  }
}
