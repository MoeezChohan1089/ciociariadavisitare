import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../details/routes/routes1.dart';
import '../../details/routes/routes2.dart';
import '../../details/routes/routes3.dart';
import '../../details/routes/routes4.dart';
import '../../details/routes/routes5.dart';
import '../../details/routes/routes6.dart';
import '../../details/routes/routes7.dart';
import '../../details/routes/routes8.dart';

class RoutesSection extends StatelessWidget {
  const RoutesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(
                RouteOneDetailScreen(
                  imageUrl: Assets.images.routeDetailImage,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(context, Assets.images.routeImage,
              "Cammino Di San Benedetto", "SUBIACO"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteTwoDetailScreen(
                  imageUrl: Assets.images.route1Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(
              context, Assets.images.route1Image, "Capo Rio", "COLLEPARDO"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteThreeDetailScreen(
                  imageUrl: Assets.images.routeDetail1Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(context, Assets.images.route2Image,
              "Monte Monna", "CAMPO CATINO"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteFourDetailScreen(
                  imageUrl: Assets.images.route3Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(
              context, Assets.images.route3Image, "Monte Cacume", "PATRICA"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteFiveDetailScreen(
                  imageUrl: Assets.images.routeDetail2Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(context, Assets.images.route4Image,
              "Le Mura Ciclopiche", "ALATRI"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteSixDetailScreen(
                  imageUrl: Assets.images.route5Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(context, Assets.images.route5Image,
              "Castello San Catasto", "SORA"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteSevenDetailScreen(
                  imageUrl: Assets.images.routeDetail3Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(context, Assets.images.route6Image,
              "Pizzo Deta", "PRATO DI CAMPOLI"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                RouteEightDetailScreen(
                  imageUrl: Assets.images.routeDetail4Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageStack(context, Assets.images.route7Image,
              "Gole Del Lacerno", "PESCOSOLIDO"),
        )
      ],
    );
  }

  customImageStack(
      BuildContext context, String imageUrl, String text, String heading) {
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
          Positioned.fill(
              left: 0,
              right: 0,
              top: 10.h,
              bottom: 10.h,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: pageMarginHorizontal / 1.5),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        heading,
                        style: context.text.bodyMedium?.copyWith(
                            color: AppColors.customWhiteTextColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 14.h),
                      decoration: BoxDecoration(
                          color: AppColors.customWhiteTextColor,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text,
                            style: context.text.bodyMedium?.copyWith(
                                color: AppColors.subTitleColor,
                                fontSize: 16.sp),
                          ),
                          const Icon(
                            Icons.arrow_circle_right_rounded,
                            color: AppColors.subTitleColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
