import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home3 extends StatefulWidget {
  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  WebView(
        initialUrl: 'https://saman.parts/home/legal/terms_conditions',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
