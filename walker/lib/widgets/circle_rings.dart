
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:walker/provider/notifire.dart';
import 'package:walker/widgets/open_painter.dart';



class Rings extends StatefulWidget {
  const Rings({super.key});

  @override
  State<Rings> createState() => _RingsState();
}

class _RingsState extends State<Rings> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  final roateX = -128;
  final roateY = -8;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    _sizeAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PageNotifier>(builder: (context, provider, _) {
      return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(80.w, 230.h),
            child: Transform.scale(
              scale: 0.82.r,
              child: Column(
                children: [
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0011)
                      ..rotateX(0.01 * roateX)
                      ..rotateY(-0.01 * roateY),
                    alignment: FractionalOffset.center,
                    child: CustomPaint(
                      painter: OpenPainter(
                          animateValue: _sizeAnimation.value,
                          pageValue: provider.page),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0011)
                      ..rotateX(0.01 * roateX)
                      ..rotateY(-0.01 * roateY),
                    alignment: FractionalOffset.center,
                    child: CustomPaint(
                      painter: OpenPainter2(
                          animateValue: _sizeAnimation.value,
                          pageValue: provider.page),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0011)
                      ..rotateX(0.01 * roateX)
                      ..rotateY(-0.01 * roateY),
                    alignment: FractionalOffset.center,
                    child: CustomPaint(
                      painter: OpenPainter3(
                          animateValue: _sizeAnimation.value,
                          pageValue: provider.page),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}


