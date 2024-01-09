import 'package:dio/dio.dart';

import '../components/items.dart';


class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<PostItem>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/news?apikey=pub_321289f21acc0f50bdbfa2e7c9983fd8c5d17&&category=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> data = jsondata['results'];
      List<PostItem> finaldata = [];
      for (var articl in data) {
        PostItem item = PostItem(
            image: articl['image_url'],
            text1: articl['title'],
            text2: articl['content']);
        finaldata.add(item);
      }
      return finaldata;
    } catch (e) {
      return [];
    }
  }
}
