import 'package:flutter/cupertino.dart';
import 'package:base_5/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:base_5/pages/item_page.dart';
import 'package:base_5/pages/profile.dart';
import 'package:base_5/pages/search.dart';

class BarItemState with ChangeNotifier{
  int currentIndex = 0;

  final List<Widget> listTabs = [
    HomePage(),
    ItemPage(),
    SearchPage(),
    ProfilePage()
  ];

  void changeIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
}