import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PhpEditior extends StatefulWidget {
  const PhpEditior({super.key});

  @override
  State<PhpEditior> createState() => _PhpEditiorState();
}

class _PhpEditiorState extends State<PhpEditior> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse("https://www.programiz.com/php/online-compiler/"))
            ,
            onLoadStart: ((controller, url) async {
              await controller.evaluateJavascript(source: "document.getElementsByClassName('header-wrapper')[0].style.display='none'");
              await controller.evaluateJavascript(source: "document.getElementById('feedback-mobile').style.display='none'");
              await controller.evaluateJavascript(source: "document.getElementsByClassName('options-wrapper')[0].style.display='none'");

            }),
            onLoadStop: ((controller, url) async {
              await controller.evaluateJavascript(source: "document.getElementsByClassName('header-wrapper')[0].style.display='none'");
              await controller.evaluateJavascript(source: "document.getElementById('feedback-mobile').style.display='none'");
              await controller.evaluateJavascript(source: "document.getElementsByClassName('options-wrapper')[0].style.display='none'");

            
            }),
            ),
          )
        ]),
      ),
    );
  }
}
