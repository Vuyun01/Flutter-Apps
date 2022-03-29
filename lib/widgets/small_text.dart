import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText({ 
    Key? key, 
    required this.text,
    this.size = 15,
    this.color = Colors.black
  }) : super(key: key);

  double size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}