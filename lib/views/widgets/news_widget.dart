import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  String imgUrl;
  String title;
  String content;
  String description;
  String newsUrl;

  NewsWidget(
      {required this.imgUrl,
      required this.title,
      required this.content,
      required this.description,
      required this.newsUrl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imgUrl,
            height: 400,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  content,
                  style: const TextStyle(fontSize: 12, color: Colors.black38),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Read More"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
