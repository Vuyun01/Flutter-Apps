import 'package:base_5/pages/detail_page.dart';
import 'package:base_5/widgets/large_text.dart';
import 'package:base_5/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ItemsLocation extends StatelessWidget {
  const ItemsLocation({ 
    Key? key,
    required this.imageData, 
    required this.textLocation,
    required this.textDestination

  }) : super(key: key);

  final String imageData;
  final String textLocation;
  final String textDestination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage())),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            height: double.maxFinite,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/$imageData'),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
            top: 190, left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                LargeText(text: textDestination, color: Colors.white, size: 15),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white, size: 15,),
                    SizedBox(width: 4,),
                    SmallText(text: textLocation, color: Colors.white, size: 12)
                  ],
                )
              ],
            )
          )
        ]
      ),
    );
  }
}