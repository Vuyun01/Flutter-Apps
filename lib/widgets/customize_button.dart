import 'package:base_5/color/colors.dart';
import 'package:flutter/material.dart';

class CustomizeButton extends StatelessWidget {
  CustomizeButton({ 
    Key? key, 
    required this.isIconType,
    this.height = 40,
    this.width = 40,
    this.icon,
    this.text,
    this.iconSize = 20,
    this.textSize = 12,
    this.color,
    this.radius = 15,
    this.borderWidth = 1,
    this.borderColor = Colors.black,
    this.backgroundColor
  }) : super(key: key);

  final bool isIconType;
  final IconData? icon;
  final double height;
  final double width;
  final String? text;
  final double iconSize;
  final double textSize;
  final Color? backgroundColor;
  final Color? color;
  final double radius;
  final double borderWidth;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: Center(
        child: !isIconType ? Text(
          text!, 
          style: TextStyle(
            fontSize: textSize, 
            fontWeight: FontWeight.bold, 
            color: color)
        ) : Icon(
          icon, 
          size: iconSize,
          color: color,
        ),
      ),
    );
  }
}
