import 'package:demo/Modules/Home/View/homePage.dart';
import 'package:demo/Modules/My/View/myPage.dart';
import 'package:demo/Main/View/tabbar.dart';
import 'package:demo/Modules/ThirdPart/thirdPartPage.dart';
import 'package:flutter/material.dart';

import '../Model/BottomNavigationBarItemModel.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarContainerView(items: [
        BottomNavigationBarItemModel("自带组件", const Icon(Icons.home), const HomePage()),
        BottomNavigationBarItemModel("第三方SDK", const Icon(Icons.home), const ThirdPartPage()),
        BottomNavigationBarItemModel("我的", const Icon(Icons.library_add), const MyPage())
      ], onTap: (int index) {
        print("点击回调 ---> $index");
      })
    );
  }
}
