import 'package:flutter/material.dart';

class DText extends StatefulWidget {
  const DText({super.key, required this.text, this.fontSize = 12.0, this.textAlign = TextAlign.left, this.color = Colors.black, this.maxLines = 1, this.overflow = TextOverflow.ellipsis});

  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final Color color;
  final int maxLines;
  final TextOverflow overflow;

  @override
  State<DText> createState() => _DText();
}

class _DText extends State<DText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
      textAlign: widget.textAlign,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      style: TextStyle(
          fontSize: widget.fontSize,
          color: widget.color
      ),
    );
  }
}
