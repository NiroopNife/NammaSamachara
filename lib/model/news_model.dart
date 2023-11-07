class News {
  String imageUrl;
  String title;
  String content;
  String description;
  String newsUrl;

  News(
      {required this.imageUrl,
      required this.title,
      required this.content,
      required this.description,
      required this.newsUrl});

  static News fromApi(Map<String, dynamic> article) {
    return News(
        imageUrl: article['urlToImage'] ??
            "https://plus.unsplash.com/premium_photo-1688561384438-bfa9273e2c00?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDV8fG5ld3N8ZW58MHx8MHx8fDA%3D",
        title: article['title'] ?? "--",
        content: article['content'] ?? "--",
        description: article['description'] ?? "--",
        newsUrl: article['url'] ??
            "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
