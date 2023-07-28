import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String? myname ;
  WebViewController? _controller;

  @override
  void initState() {
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text("SCREEN 2 - WebView"),),
      body: Container(
        color:Colors.greenAccent,
        // child: WebView(
        //     initialUrl: 'https://google.com',
        //     onWebViewCreated: (WebViewController webViewController){
        //       _controller = webViewController;}
        // ),
      ),
    );
  }
}