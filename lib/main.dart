import 'package:flutter/material.dart';
import 'package:flutter_custom_painter_fundamental/view/bitmap_painter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: const Size(300, 300),
            painter: BitmapPainter(),
          ),
        ),
      ),
    );
  }
}
