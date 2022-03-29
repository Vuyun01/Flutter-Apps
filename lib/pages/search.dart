import 'package:flutter/material.dart';
import 'package:base_5/widgets/icon_items.dart';
class SearchPage extends StatelessWidget {
  SearchPage({ Key? key }) : super(key: key);


  final List<String> _listIcon = [
    'balloning',
    'hiking',
    'kayaking',
    'snorkling'
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: 100,
        width: double.maxFinite,
        margin: const EdgeInsets.only(left: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _listIcon.length,
          itemBuilder: ( _ , index) => Container(
            margin: const EdgeInsets.only(right: 30),
            child: IconItems(
              text: _listIcon[index], 
              iconImage: '${_listIcon[index]}'+'.png',
            ),
          )
        ),
      )
    );
  }
}