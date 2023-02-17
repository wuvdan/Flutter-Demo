import 'package:flutter/material.dart';

class UIIconPage extends StatefulWidget {
  const UIIconPage({super.key});

  @override
  State<UIIconPage> createState() => _UIIconPage();
}

class _UIIconPage extends State<UIIconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          titleSpacing: 100,
          title: const Text("Icon"),
        ),
        body: ListView(
          children: const [
            Icon(Icons.add),
            Icon(Icons.abc_outlined),
            Icon(Icons.home),
            Icon(Icons.home, color: Colors.red),
            Icon(Icons.home, color: Colors.green, size: 100),
          ],
        )
    );
  }
}