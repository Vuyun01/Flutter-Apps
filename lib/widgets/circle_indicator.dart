
import 'package:flutter/cupertino.dart';

class CircleDrawIndicator extends Decoration{

  CircleDrawIndicator({
    required this.color,
    this.radius = 2
  });
  double radius;
  final Color color;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CreateCirclePaint(color: color, radius: radius);
  }
  
}
class _CreateCirclePaint extends BoxPainter{

  _CreateCirclePaint({
    required this.color,
    this.radius = 2
  });
  double radius;
  final Color color;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {

    //take value for paint object
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    //set position for custom dot
    Offset _newOffset = Offset(configuration.size!.width/2 - radius/2,configuration.size!.height - radius);
    canvas.drawCircle(offset + _newOffset, radius, _paint); //paint custom dot mark
    
  }
  
}