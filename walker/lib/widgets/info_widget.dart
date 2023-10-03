import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.filePath,
    required this.topText,
    required this.bottomText,
  });

  final String filePath;
  final String topText;
  final String bottomText;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          filePath,
          width: 26.r,
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topText,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              bottomText,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
