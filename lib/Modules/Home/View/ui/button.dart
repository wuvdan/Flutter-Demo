import 'package:flutter/material.dart';

class UIButtonPage extends StatefulWidget {
  const UIButtonPage({super.key});

  @override
  State<UIButtonPage> createState() => _UIButtonPage();
}

class _UIButtonPage extends State<UIButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        titleSpacing: 100,
        title: Text("Button"),
      ),
      body: ListView(
        children: [

          Text("\n说明：演示文字为Text组件可配置样式， 属性child可为其他组件",
              style: TextStyle(fontSize: 15, color: Colors.red)),

          Text("\nTextButton",
              style: TextStyle(fontSize: 25, color: Colors.blue)),

          TextButton(onPressed: () {
            print("按钮点击了");
          }, child: Text("这是一个按钮")),


          Text("\nElevatedButton",
              style: TextStyle(fontSize: 25, color: Colors.blue)),

          ElevatedButton(onPressed: () {
            print("按钮点击了");
          }, child: Text("这是一个按钮")),

          Text("\nOutlineButton",
              style: TextStyle(fontSize: 25, color: Colors.blue)),

          OutlinedButton(onPressed: () {
            print("按钮点击了");
          }, child: Text("这是一个按钮")),


          Text("\nIconButton",
              style: TextStyle(fontSize: 25, color: Colors.blue)),

          IconButton(onPressed: () {
            print("按钮点击了");
          }, icon: Icon(Icons.thumb_up),
          ),

          Text("\n图文按钮",
              style: TextStyle(fontSize: 25, color: Colors.blue)),

          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: () {
              print("按钮点击了");
            },
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text("添加"),
            onPressed: () {
              print("按钮点击了");
            },
          ),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text("详情"),
            onPressed: () {
              print("按钮点击了");
            },
          ),
        ],
      )
    );
  }
}