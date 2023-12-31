import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:namma_samachara/model/news_model.dart';

class NewsController {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];

  static Future<NewsArt> fetchNews() async {
    final _random = Random();
    var sourceId = sourcesId[_random.nextInt(sourcesId.length)];
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceId&apiKey=b8750a6914774868a41c609aef6ed1bf"));
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];

    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];


    return NewsArt.fromAPItoApp(myArticle);
  }
}
