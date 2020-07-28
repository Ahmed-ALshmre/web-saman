import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  WebView(
        initialUrl: 'https://saman.parts',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
