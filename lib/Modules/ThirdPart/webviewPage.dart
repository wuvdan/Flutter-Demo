import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewPage extends StatefulWidget {

  const WebViewPage({super.key});


  @override
  State<WebViewPage> createState() => _WebViewPage();
}

class _WebViewPage extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("WebView"),
         backgroundColor: Colors.white,
         foregroundColor: Colors.red
       ),
       body: SizedBox(
         height: 300,
         child: InAppWebView(
           initialUrlRequest: URLRequest(url: Uri.parse("https://oss-web-tyh.hfcsbc.com/test/app.html")),
           onWebViewCreated: (InAppWebViewController controller) {
             print(controller.getTitle().toString());
           },
         ),
       )
     );
  }

}