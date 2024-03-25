import 'dart:math';

import 'package:flutter/material.dart';

class LineProgressBarPainter extends CustomPainter {
  LineProgressBarPainter({
    this.rectOuterColor = Colors.black,
    this.pointColor = Colors.transparent,
    required this.width,
    required this.radius,
    this.opacity1 = 0,
    this.opacity2 = 0,
    this.opacity3 = 0,
    this.opacity4 = 0,
    this.opacity5 = 0,
    this.opacity6 = 0,
    this.opacity7 = 0,
    this.opacity8 = 0,
    this.opacity9 = 0,
    // this.rectPointColor1 = Colors.amber,
  });

  // Color rectPointColor1;

  double width;

  double opacity1,
      opacity2,
      opacity3,
      opacity4,
      opacity5,
      opacity6,
      opacity7,
      opacity8,
      opacity9;

  final Color rectOuterColor, pointColor;

  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    // final Size(:width) = size;

    Random random = Random();

    Paint rectOuterPaint = Paint()..color = rectOuterColor;

    RRect rRect = RRect.fromLTRBR(
      -width * 0.025,
      -width * 0.03,
      width + width * 0.025,
      width * 0.23,
      Radius.circular(radius),
    );

    canvas.drawRRect(rRect, rectOuterPaint);

    //Rect Points

    Rect point1 = Rect.fromLTWH(width * 0.011, 0, width * 0.1, width * 0.2);
    Rect point2 = Rect.fromLTWH(width * 0.121, 0, width * 0.1, width * 0.2);
    Rect point3 = Rect.fromLTWH(width * 0.231, 0, width * 0.1, width * 0.2);
    Rect point4 = Rect.fromLTWH(width * 0.341, 0, width * 0.1, width * 0.2);
    Rect point5 = Rect.fromLTWH(width * 0.451, 0, width * 0.1, width * 0.2);
    Rect point6 = Rect.fromLTWH(width * 0.561, 0, width * 0.1, width * 0.2);
    Rect point7 = Rect.fromLTWH(width * 0.671, 0, width * 0.1, width * 0.2);
    Rect point8 = Rect.fromLTWH(width * 0.781, 0, width * 0.1, width * 0.2);
    Rect point9 = Rect.fromLTWH(width * 0.891, 0, width * 0.1, width * 0.2);

    Paint rectPointPaint1;
    Paint rectPointPaint2;
    Paint rectPointPaint3;
    Paint rectPointPaint4;
    Paint rectPointPaint5;
    Paint rectPointPaint6;
    Paint rectPointPaint7;
    Paint rectPointPaint8;
    Paint rectPointPaint9;

    if (pointColor == Colors.transparent) {
      rectPointPaint1 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity1);

      rectPointPaint2 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity2);

      rectPointPaint3 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity3);

      rectPointPaint4 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity4);

      rectPointPaint5 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity5);

      rectPointPaint6 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity6);

      rectPointPaint7 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity7);

      rectPointPaint8 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity8);

      rectPointPaint9 = Paint()
        ..color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), random.nextInt(255))
            .withOpacity(opacity9);
    } else {
      rectPointPaint1 = Paint()..color = pointColor.withOpacity(opacity1);

      rectPointPaint2 = Paint()..color = pointColor.withOpacity(opacity2);

      rectPointPaint3 = Paint()..color = pointColor.withOpacity(opacity3);

      rectPointPaint4 = Paint()..color = pointColor.withOpacity(opacity4);

      rectPointPaint5 = Paint()..color = pointColor.withOpacity(opacity5);

      rectPointPaint6 = Paint()..color = pointColor.withOpacity(opacity6);

      rectPointPaint7 = Paint()..color = pointColor.withOpacity(opacity7);

      rectPointPaint8 = Paint()..color = pointColor.withOpacity(opacity8);

      rectPointPaint9 = Paint()..color = pointColor.withOpacity(opacity9);
    }
    canvas.drawRect(point1, rectPointPaint1);
    canvas.drawRect(point2, rectPointPaint2);
    canvas.drawRect(point3, rectPointPaint3);
    canvas.drawRect(point4, rectPointPaint4);
    canvas.drawRect(point5, rectPointPaint5);
    canvas.drawRect(point6, rectPointPaint6);
    canvas.drawRect(point7, rectPointPaint7);
    canvas.drawRect(point8, rectPointPaint8);
    canvas.drawRect(point9, rectPointPaint9);
  }

  @override
  bool shouldRepaint(LineProgressBarPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(LineProgressBarPainter oldDelegate) => false;
}
