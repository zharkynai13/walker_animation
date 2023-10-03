import 'package:flutter/material.dart';
import 'package:walker/constants/colors.dart';
import 'dart:math';

class OpenPainter extends CustomPainter {
  OpenPainter({required this.animateValue, required this.pageValue});

  final animateValue;
  final double pageValue;
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = ringBGColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 * (1 - min(1, pageValue * 2));
    //draw arc
    canvas.drawArc(
        const Offset(40, 350) & const Size(140, 140),
        3 * pi / 2, //radians
        2 * pi, //radians
        false,
        paint1);

    var paint2 = Paint()
      ..color = ring1Color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 * (1 - min(1, pageValue * 2))
      ..strokeCap = StrokeCap.round;
    //draw arc
    canvas.drawArc(
        const Offset(40, 350) & const Size(140, 140),
        5.5, //radians
        3.2 * animateValue, //radians
        false,
        paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter2 extends CustomPainter {
  OpenPainter2({required this.animateValue, required this.pageValue});

  final animateValue;
  final double pageValue;
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = ringBGColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 * (1 - min(1, pageValue * 2));
    //draw arc
    canvas.drawArc(
        const Offset(28, 338) & const Size(165, 165),
        pi, //radians
        2 * pi, //radians
        false,
        paint1);

    var paint2 = Paint()
      ..color = ring2Color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 * (1 - min(1, pageValue * 2))
      ..strokeCap = StrokeCap.round;
    //draw arc
    canvas.drawArc(
        const Offset(28, 338) & const Size(165, 165),
        5.5, //radians
        3.8 * animateValue, //radians
        false,
        paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter3 extends CustomPainter {
  OpenPainter3({required this.animateValue, required this.pageValue});

  final animateValue;
  final double pageValue;
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = ringBGColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 * (1 - min(1, pageValue * 2));
    //draw arc
    canvas.drawArc(
        const Offset(16, 326) & const Size(190, 190),
        3 * pi / 2, //radians
        2 * pi, //radians
        false,
        paint1);

    var paint2 = Paint()
      ..color = ring3Color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 * (1 - min(1, pageValue * 2))
      ..strokeCap = StrokeCap.round;
    //draw arc
    canvas.drawArc(
        const Offset(16, 326) & const Size(190, 190),
        5.5, //radians
        4.2 * animateValue, //radians
        false,
        paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

