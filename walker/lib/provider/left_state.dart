import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walker/constants/colors.dart';
class TopLeftStat1 extends StatelessWidget {
  const TopLeftStat1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Кундун максаты",
          style: TextStyle(
              fontSize: 24.sp, color: textColor, fontWeight: FontWeight.bold),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '87',
                style: TextStyle(fontSize: 84.sp, color: textColor),
              ),
              TextSpan(
                text: '%',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
