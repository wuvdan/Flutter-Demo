import 'package:flutter/material.dart';

class UIImagePage extends StatefulWidget {
  const UIImagePage({super.key});

  @override
  State<UIImagePage> createState() => _UIImagePage();
}

class _UIImagePage extends State<UIImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          titleSpacing: 100,
          title: const Text("Image"),
        ),
        body: ListView(
          children: const [
            Text("本地图片"),
            Image(
              image: AssetImage("images/shangchuan.png"),
              width: 30.0,
              height: 30.0,
            ),
            Image(image: AssetImage("images/yaoyan.png")),
            Image(image: AssetImage("images/zhaopinqiuzhi.png")),
            Text("网络图片"),
            Image(image: NetworkImage("https://t7.baidu.com/it/u=810585695,3039658333&fm=193&f=GIF")),
            Image(image: NetworkImage("https://tenfei05.cfp.cn/creative/vcg/800/new/VCG41N1146433745.jpg"), width: 100, height: 200, fit: BoxFit.contain)
          ],
        )
    );
  }
}