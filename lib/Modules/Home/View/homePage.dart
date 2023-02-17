import 'package:demo/Modules/Home/View/ui/NavigatorButton.dart';
import 'package:demo/Modules/Home/View/ui/button.dart';
import 'package:demo/Modules/Home/View/ui/checkbox.dart';
import 'package:demo/Modules/Home/View/ui/icon.dart';
import 'package:demo/Modules/Home/View/ui/image.dart';
import 'package:demo/Modules/Home/View/ui/input.dart';
import 'package:demo/Modules/Home/View/ui/switch.dart';
import 'package:demo/Modules/Home/View/ui/text.dart';
import 'package:demo/Modules/ThirdPart/webviewPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("组件使用")
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
        children: const [
          Text("基础组件", style: TextStyle(
            fontSize: 18,
            color: Colors.blue
          )),
          NavigatorButton(text: "text", page: UITextPage()),
          NavigatorButton(text: "icon", page: UIIconPage()),
          NavigatorButton(text: "button", page: UIButtonPage()),
          NavigatorButton(text: "image", page: UIImagePage()),
          NavigatorButton(text: "switch", page: UISwitchPage()),
          NavigatorButton(text: "checkbox", page: UICheckBoxPage()),
          NavigatorButton(text: "textField", page: UIInputPage()),
        ],
      )
    );
  }
}