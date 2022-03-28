import 'dart:convert';

import 'package:http/http.dart';
import 'package:stockconsole/models/news.dart';

class ApiService {
  final endPointUrl = Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0c9e0f1b65a941f2b7302719ad8d4aaf");

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    //first of all let's check that we got a 200 statu code: this mean that the request was a succes
    if (res.statusCode == 200) {
      // print(res.body);

      Map<String, dynamic> json = jsonDecode(res.body);

      print(json);
      List<dynamic> body = json['articles'];

      // print(body);

      //this line will allow us to get the different articles from the json file and putting them into a list
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      // print(body);

      // print("art");
      print(articles);
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
