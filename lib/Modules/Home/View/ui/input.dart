import 'dart:ui';

import 'package:flutter/material.dart';

class UIInputPage extends StatefulWidget {
  const UIInputPage({super.key});

  @override
  State<UIInputPage> createState() => _UIInputPage();
}

class _UIInputPage extends State<UIInputPage> {

  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          titleSpacing: 100,
          title: const Text("TextField"),
        ),
        body: ListView(
          children: const [
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "用户名或邮箱",
                // 未获得焦点下划线设为灰色
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                //获得焦点下划线设为蓝色
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
              keyboardAppearance: Brightness.dark,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "用户名或邮箱",
                  fillColor: Colors.lightGreen
              ),
              keyboardAppearance: Brightness.dark,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)
              ),
              keyboardAppearance: Brightness.dark,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "密码",
                  prefixIcon: Icon(Icons.password)
              ),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  labelText: "密码2",
                  hintText: "密码2",
                  prefixIcon: Icon(Icons.password)
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.go,
            )
          ],
        )
    );
  }
}