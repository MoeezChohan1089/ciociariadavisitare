import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';
import '../logic.dart';

class BottomNavItem extends StatelessWidget {
  final int indexValue;
  final String title, inActiveIcon, activeIcon;

  final logic = BottomNavigationLogic.to;

  BottomNavItem(
      {super.key,
      required this.indexValue,
      required this.title,
      required this.activeIcon,
      required this.inActiveIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async {
          HapticFeedback.lightImpact();
          logic.currentPageIndex.value = indexValue;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logic.currentPageIndex.value == indexValue
                ? SvgPicture.asset(inActiveIcon,
                    color: AppColors.bottomIconColor, height: 22.h)
                : SvgPicture.asset(inActiveIcon,
                    color: Color(0xffAEAEB2), height: 22.h),
            2.heightBox,
            logic.currentPageIndex.value == indexValue
                ? Text(
                    title,
                    style: context.text.bodySmall
                        ?.copyWith(color: AppColors.bottomIconColor),
                  )
                : Text(
                    title,
                    style: context.text.bodySmall
                        ?.copyWith(color: Color(0xffAEAEB2)),
                  )
          ],
        ),
      ),
    );
  }
}
