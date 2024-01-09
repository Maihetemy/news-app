import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/components/items.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {
  const Post({required this.postitem, super.key});
  final PostItem postitem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 400,
        child: Column(
          children: [
            SizedBox(
              height: 270,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  postitem.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            Text(
              postitem.text1 ?? '',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black.withOpacity(1.0),
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Text(
                postitem.text2 ?? '',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
