import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:walker/provider/notifire.dart';
import 'package:walker/widgets/info_widget.dart';
import 'left_state.dart';
class UserStats extends StatefulWidget {
  const UserStats({
    super.key,
  });

  @override
  State<UserStats> createState() => _UserStatsState();
}

class _UserStatsState extends State<UserStats> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageNotifier>(builder: (context, provider, _) {
      // print("form consumer : ${provider.page}");
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  TopLeftStat1(),
          SizedBox(
            height: 20.sp,
          ),
          const InfoWidget(
            filePath: "assets/icons/fire.svg",
            topText: "1,880",
            bottomText: "Calories",
          ),
          SizedBox(
            height: 20.sp,
          ),
          const InfoWidget(
            filePath: "assets/icons/steps.svg",
            topText: "5,248",
            bottomText: "steps",
          ),
          SizedBox(
            height: 20.sp,
          ),
          const InfoWidget(
            filePath: "assets/icons/moon.svg",
            topText: "5.6",
            bottomText: "hours",
          ),
        ],
      );
    });
  }
}