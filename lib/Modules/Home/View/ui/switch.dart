import 'package:flutter/material.dart';

class UISwitchPage extends StatefulWidget {
  const UISwitchPage({super.key});

  @override
  State<UISwitchPage> createState() => _UISwitchPage();
}

class _UISwitchPage extends State<UISwitchPage> {

  bool switchState = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          titleSpacing: 100,
          title: const Text("Switch"),
        ),
        body: ListView(
          children: [
            Switch(value: switchState, onChanged: (v) {
                print(v);
                setState(() {
                  switchState = v;
                });
            }),

            Switch(value: switchState, onChanged: (v) {
              print(v);
              setState(() {
                switchState = v;
              });
            }, activeColor: Colors.red, activeTrackColor: Colors.green),
          ],
        )
    );
  }
}