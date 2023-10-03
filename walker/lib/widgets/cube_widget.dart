import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:walker/app/app.dart';
class CubeWidget extends StatelessWidget {

  final int index;
  final double pageNotifier;

  final Widget child;
  const CubeWidget({
    Key? key,
    required this.index,
    required this.pageNotifier,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLeaving = (index - pageNotifier) <= 0;
    final t = (index - pageNotifier);
    final rotationY = lerpDouble(0, 90, t);
    final opacity = lerpDouble(1, 0, t.abs())?.clamp(0.0, 1.0).toDouble();
    final transform = Matrix4.identity();
    transform.setEntry(3, 2, 0.003);
    transform.rotateY(-degToRad(rotationY!));
    return Transform(
      alignment: !isLeaving ? Alignment.centerRight : Alignment.centerLeft,
      transform: transform,
      child: Opacity(opacity: opacity!, child: child),
    );
  }
}