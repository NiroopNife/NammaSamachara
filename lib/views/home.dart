import 'package:flutter/material.dart';
import 'package:namma_samachara/views/widgets/news_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsWidget(
            imgUrl: 'https://picsum.photos/250?image=9',
            title: "5G in India",
            description:
                "5G is great on paper. But in real-world use, it has been synonymous with call drops, constant shuffle between 4G and 5G, and network vacuums. It has basically been a disaster and in this piece, we dig deeper into the poor experience.",
            newsUrl:
                "https://www.indiatoday.in/technology/talking-points/story/5g-is-available-in-india-in-almost-every-city-and-yet-so-far-its-rollout-has-been-a-disaster-for-users-2454636-2023-10-28",
          );
        },
      ),
    );
  }
}
