import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var Size(:height, :width) = size;
    var center = Offset(width/2, height/2);
    var rect = Rect.fromCircle(center: center, radius: 30);
    Paint paint  = Paint()
      ..shader = LinearGradient(colors: [
        Colors.white,
        Colors.redAccent,
        Colors.white
      ],
          stops: [
            0.4,
            0.9,
          ],
          begin: Alignment.topRight
      ).createShader(rect)
      ..color = Colors.brown
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7;
    canvas.drawCircle(center,30, paint);//
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false;
  }
}
