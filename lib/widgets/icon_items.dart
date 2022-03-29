import 'package:base_5/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:base_5/color/colors.dart';

class IconItems extends StatelessWidget {
  IconItems({ 
    Key? key, 
    required this.text, 
    required this.iconImage,
  }) : super(key: key);

  final String text;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage('assets/$iconImage'), fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: 8,),
        SmallText(text: text, size: 12, color: Colors.grey)
      ],
    );
  }
}