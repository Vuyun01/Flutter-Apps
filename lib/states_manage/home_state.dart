import 'package:flutter/widgets.dart';

class HomeState with ChangeNotifier{
  final List<String> imageLocation = [
    'mountain.jpeg',
    'mountain2.jpg',
    'mountain3.jpg',
    'mountain4.jpg' 
  ];
  var destination = {
    'Everest' : 'Himalaya, Nepal',
    'Dufourspitze' : 'Switzerland',
    'Logan' : 'Canada',
    'Fuji' : 'Japan'
  };
  var icons = {
    'balloning.png' : 'Balloning',
    'hiking.png' : 'Hiking',
    'kayaking.png' : 'Kayaking',
    'snorkling.png' : 'snorkling'
  };
}