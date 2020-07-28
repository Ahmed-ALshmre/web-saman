import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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
