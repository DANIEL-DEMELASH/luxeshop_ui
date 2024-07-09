import 'package:flutter/material.dart';

import '../config/constants.dart';

class SquarePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = secondaryColor
      ..style = PaintingStyle.fill;

    const squareSize = 37.0;
    for (double x = 0; x < size.width; x += squareSize) {
      for (double y = 0; y < size.height; y += squareSize) {
        canvas.drawRect(Rect.fromLTWH(x, y, squareSize, squareSize), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
