import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walker/constants/colors.dart';
import 'package:walker/widgets/circle_rings.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 1.sh,
          width: 1.sw,
        ),
        const Rings(),
        Positioned(
          bottom: 20.r,
          left: 20.r,
          right: 20.r,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/pizza.jpg",
                  width: 75.r,
                  height: 75.r,
                ),
                SizedBox(
                  width: 20.r,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A Simple way to \nstay healthy",
                      style: TextStyle(color: textColor, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 10.r,
                    ),
                    const Text(
                      "DR Melissa",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/icons/light.svg",
                  width: 16.sp,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

