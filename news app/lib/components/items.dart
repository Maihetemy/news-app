class Item {
  final String? image, word;
  Item({required this.image, required this.word});
}

class PostItem {
  final String? text1;
  final String image, text2;
  PostItem({required this.image, required this.text1, required this.text2});
  factory PostItem.getjson(json) {
    PostItem(
        image: json['image_url'], text1: json['title'], text2: json['content']);
  }
}
