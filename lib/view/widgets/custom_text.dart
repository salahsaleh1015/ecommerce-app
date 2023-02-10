import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
final String title;
final double fontSize;
final Color color;

  const CustomText({ required this.title, required this.fontSize, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
