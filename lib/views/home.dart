import 'package:flutter/material.dart';
import 'package:namma_samachara/controllers/news_controller.dart';
import 'package:namma_samachara/model/news_model.dart';
import 'package:namma_samachara/views/widgets/news_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late News news;

  @override
  void initState() {
    getNews();

    super.initState();
  }

  getNews() async {
    news = await NewsController.fetchNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          getNews();
        },
        itemBuilder: (context, index) {
          return NewsWidget(
            imgUrl: news.imageUrl,
            title: news.title,
            content: news.content,
            description: news.description,
            newsUrl: news.newsUrl,
          );
        },
      ),
    );
  }
}
