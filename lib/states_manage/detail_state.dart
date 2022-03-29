import 'package:flutter/cupertino.dart';

class DetailState with ChangeNotifier{
  bool favButtonState = false;
  int selectedIndex = -1;
  int emptyStars = 3;

  void changeIndex(int newIndex){
    selectedIndex = newIndex;
    notifyListeners();
  }

  void changeBool(){
    favButtonState = !favButtonState;
    notifyListeners();
  }
}