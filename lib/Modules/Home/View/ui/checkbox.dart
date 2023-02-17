import 'package:flutter/material.dart';

class UICheckBoxPage extends StatefulWidget {
  const UICheckBoxPage({super.key});

  @override
  State<UICheckBoxPage> createState() => _UICheckBoxPage();
}

class _UICheckBoxPage extends State<UICheckBoxPage> {

  bool switchState = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          titleSpacing: 100,
          title: const Text("CheckBox"),
        ),
        body: ListView(
          children: [
            Row(children: [
              Checkbox(value: switchState, onChanged: (v) {
                print(v);
                setState(() {
                  switchState = v!;
                });
              }),
              Text("xx协议")
            ],),
            Row(children: [
              Checkbox(value: switchState,
                  activeColor: Colors.red, //选中时的颜色
                  onChanged: (v) {
                print(v);
                setState(() {
                  switchState = v!;
                });
              }),
              Text("xx协议")
            ],)
          ],
        )
    );
  }
}