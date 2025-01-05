import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';


class PointerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = messageBarColor;
    final path = Path();

    // Create a triangle pointer
    path.moveTo(0, 0);
    path.lineTo( 0,size.width,);
    path.lineTo(size.height, 0 );
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
