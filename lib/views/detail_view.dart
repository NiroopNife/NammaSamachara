import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailView extends StatefulWidget {
  String newsUrl;

  DetailView({required this.newsUrl, Key? key}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {

  final controller = WebViewController();

  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    controller..setJavaScriptMode(JavaScriptMode.disabled)..loadRequest(Uri.parse(widget.newsUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
