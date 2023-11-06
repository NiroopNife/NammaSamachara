import 'dart:convert';

import 'package:http/http.dart';

class NewsController {
  static fetchNews() async {
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=b8750a6914774868a41c609aef6ed1bf"));

    Map body_data = jsonDecode(response.body);
    print(body_data);
  }
}
