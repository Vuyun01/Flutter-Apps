import 'package:base_5/pages/bar_item.dart';
import 'package:base_5/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:base_5/color/colors.dart';

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({ 
    Key? key, 
    this.text, 
    this.width = 120,
    this.height = 60,
    required this.isResponsive,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.deepPurple,
    this.textSize = 15,
    this.radius = 15,
  }) : super(key: key);

  final bool isResponsive;
  final String? text;
  final double width;
  final double height;
  final double textSize;
  final Color textColor;
  final Color backgroundColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor
      ),
      child: Row(
        mainAxisAlignment: isResponsive ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        children: [
          isResponsive ? Container(
            margin: const EdgeInsets.only(left: 20),
            child: SmallText(text: text!, size: textSize, color: textColor,)) : Container(),
          Image.asset('assets/button-one-remove.png', fit: BoxFit.cover,) 
        ] 
      ),
    );
  }
}