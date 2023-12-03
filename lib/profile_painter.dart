import 'dart:ui';

import 'package:flutter/material.dart';

class CardCustomPainter extends CustomPainter {
  final Color shadowColor; // Shadow color
  final double shadowOffsetValue;
  final Color topCircleColor;
  final double bulurSigmaValue;
  CardCustomPainter({
    this.bulurSigmaValue = 8.0,
    this.shadowColor = Colors.black,
    this.shadowOffsetValue = 44.0,
    this.topCircleColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double shadowOffset = shadowOffsetValue; // Shadow offset value
    double blurSigma = bulurSigmaValue; // Blur sigma value

    Paint paint = Paint()
      ..color = topCircleColor
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.32);
    path.quadraticBezierTo(size.width * 0.24, size.height * 0.45,
        size.width * 0.49, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.73, size.height * 0.45, size.width, size.height * 0.32);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawShadow(path, shadowColor, shadowOffset, true);

    canvas.drawPath(path, paint);

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final shadowPaint = Paint()
      ..blendMode = BlendMode.srcATop
      ..imageFilter = ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma);
    canvas.saveLayer(rect, shadowPaint);
    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
