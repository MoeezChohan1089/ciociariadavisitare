import 'package:ciociariadavisitare/src/module/bottom_navigation/logic.dart';
import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MuchMoreSection extends StatelessWidget {
  MuchMoreSection({super.key});

  final logic = Get.put(BottomNavigationLogic());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            logic.currentPageIndex.value = 1;
          },
          child: customImageStack(
              context, Assets.images.waterManImage, "ATTRAZIONI"),
        ),
        GestureDetector(
          onTap: () {
            logic.currentPageIndex.value = 3;
          },
          child: customImageStack(
              context, Assets.images.mountainManImage, "PERCORSI"),
        ),
        GestureDetector(
          onTap: () {
            logic.currentPageIndex.value = 2;
          },
          child: customImageStack(
              context, Assets.images.historicalImage, "CULTURA"),
        ),
      ],
    );
  }

  customImageStack(BuildContext context, String imageUrl, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: pageMarginHorizontal / 1.2,
          vertical: pageMarginVertical / 2),
      child: Stack(
        children: [
          SizedBox(
              // margin: EdgeInsets.symmetric(horizontal: pageMarginHorizontal),
              height: 260.h,
              width: double.maxFinite,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ))),
          Positioned(
              left: 0,
              right: 0,
              bottom: 8.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: pageMarginHorizontal),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
                  decoration: BoxDecoration(
                      color: AppColors.customWhiteTextColor,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: context.text.bodyMedium?.copyWith(
                            color: AppColors.subTitleColor, fontSize: 16.sp),
                      ),
                      const Icon(
                        Icons.arrow_circle_right_rounded,
                        color: AppColors.subTitleColor,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
