import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../module/settings/setting_screen.dart';
import '../utils/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBorder;
  final String title;
  final String subTitle;
  const CustomAppBar(
      {super.key,
      this.showBorder = true,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: !showBorder ? Colors.transparent : AppColors.appBordersColor,
            width: .5,
          ),
        ),
      ),
      child: AppBar(
        backgroundColor: AppColors.backgroundColor,
        scrolledUnderElevation: 0,
        leading: null,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.text.bodyMedium?.copyWith(
                  color: AppColors.blackColor,
                  height: 1.3,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              subTitle,
              style: context.text.bodyMedium
                  ?.copyWith(color: AppColors.subTitleColor, fontSize: 12.sp),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const SettingScreen());
              },
              icon: const Icon(
                Icons.settings,
                color: AppColors.subTitleColor,
              ))
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
