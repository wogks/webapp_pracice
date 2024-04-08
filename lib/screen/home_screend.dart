import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..loadRequest(homeUrl)
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: const Icon(Icons.home),
          ),
        ],
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('웹뷰 연습~'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
