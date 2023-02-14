import 'package:flutter/material.dart';

class NavigatorButton extends StatefulWidget {
  const NavigatorButton({super.key, required this.text, required this.page});

  final String text;
  final Widget page;

  @override
  State<NavigatorButton> createState() => _NavigatorButton();
}

class _NavigatorButton extends State<NavigatorButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return widget.page;
          }));
        },
        child: Text(widget.text,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ))
    );
  }
}
