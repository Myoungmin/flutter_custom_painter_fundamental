import 'package:flutter/material.dart';

class BitmapPainter extends CustomPainter {
  final List<int> bitmap = [
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    255,
    0,
    255,
    0,
    255,
    0,
    255,
    0,
  ];

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final pixelSize = size.width / 8;

    for (int y = 0; y < 8; y++) {
      for (int x = 0; x < 8; x++) {
        final colorValue = bitmap[y * 8 + x];
        paint.color = Color.fromARGB(255, colorValue, colorValue, colorValue);
        canvas.drawRect(
          Rect.fromLTWH(x * pixelSize, y * pixelSize, pixelSize, pixelSize),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
