import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  const TextView(
    this.text, {
    super.key,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
