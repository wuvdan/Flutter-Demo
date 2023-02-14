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
        backgroundColor: Colors.deepOrange,
        titleSpacing: 100,
        title: Text("Icon"),
      ),
      body: const Center(
          child: Text("Icon")
      ),
    );
  }
}