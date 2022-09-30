import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewDemo extends StatefulWidget {
  const WebViewDemo({Key? key}) : super(key: key);

  @override
  State<WebViewDemo> createState() => _WebViewDemoState();
}

class _WebViewDemoState extends State<WebViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 300,
            child: WebView(
              backgroundColor: Colors.green,
              initialUrl: "https://pub.dev/packages/provider",
              zoomEnabled: true,
            ),
          )
        ],
      ),
    );
  }
}
