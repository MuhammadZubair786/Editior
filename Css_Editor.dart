import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CEditior extends StatefulWidget {
  const CEditior({super.key});

  @override
  State<CEditior> createState() => _CEditiorState();
}

class _CEditiorState extends State<CEditior> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse("https://www.programiz.com/c-programming/online-compiler/"))
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
