import 'package:demo/Modules/ThirdPart/amapPage.dart';
import 'package:demo/Modules/ThirdPart/videoPlayer.dart';
import 'package:demo/Modules/ThirdPart/webviewPage.dart';
import 'package:flutter/material.dart';

import '../Home/View/ui/NavigatorButton.dart';
import 'bdMapPage.dart';

class ThirdPartPage extends StatefulWidget {
  const ThirdPartPage({super.key});

  @override
  State<ThirdPartPage> createState() => _ThirdPartPage();
}

class _ThirdPartPage extends State<ThirdPartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        titleSpacing: 100,
        title: Text("第三方SDK"),
      ),
        body: ListView(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
          children: const [
            Text("常用组件", style: TextStyle(
                fontSize: 18,
                color: Colors.blue
            )),
            NavigatorButton(text: "高德地图", page: AMapPage()),
            NavigatorButton(text: "百度地图", page: BaiduMapPage()),
            NavigatorButton(text: "webView", page: WebViewPage()),
            NavigatorButton(text: "视频播放", page: VideoPlayerPage()),
          ],
        )
    );
  }
}