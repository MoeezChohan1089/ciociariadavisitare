import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../details/attraction/attraction1.dart';
import '../../details/attraction/attraction2.dart';
import '../../details/attraction/attraction3.dart';
import '../../details/attraction/attraction4.dart';
import '../../details/attraction/attraction5.dart';
import '../../details/attraction/attraction6.dart';
import '../../details/attraction/attraction7.dart';
import '../../details/attraction/attraction8.dart';
import '../../details/attraction/attraction9.dart';

class AdventureSection extends StatelessWidget {
  const AdventureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionOneDetailScreen(
                  imageUrl: Assets.images.attractionImage,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attractionImage,
              "Grotte Di Pastena",
              "10:00 / 16:00",
              "Pastena",
              "6 - 9 € / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionTwoDetailScreen(
                  imageUrl: Assets.images.attraction1Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction1Image,
              "Ambasciatori Hotel Palace",
              "9:00 / 20:00",
              "Fiuggi",
              "28€ / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionThreeDetailScreen(
                  imageUrl: Assets.images.attraction2Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction2Image,
              "Vytae Vallecorsa",
              "9:00 / 19:00",
              "Vallecorsa",
              "55€ / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionFourDetailScreen(
                  imageUrl: Assets.images.attraction4Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction4Image,
              "Park Club",
              "Solo estivo",
              "Frosinone",
              "10€ / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionFiveDetailScreen(
                  imageUrl: Assets.images.attraction5Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction5Image,
              "Pozzo D'Antullo",
              "10:00 / 16:00",
              "Collepardo",
              "7€ / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionSixDetailScreen(
                  imageUrl: Assets.images.attraction3Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction3Image,
              "Cascata Di Isola Del Liri",
              "Sempre aperto",
              "Isola Del Liri",
              "Gratuito"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionSevenDetailScreen(
                  imageUrl: Assets.images.attraction6Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction6Image,
              "Grotte Di Falvaterra",
              "Solo Estivo",
              "Cassino",
              "5€ / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionEightDetailScreen(
                  imageUrl: Assets.images.attraction7Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction7Image,
              "Hawaii Park",
              "10:30 / 17:30",
              "Falvaterra",
              "15€ / persona"),
        ),
        GestureDetector(
          onTap: () {
            Get.to(
                AttractionNineDetailScreen(
                  imageUrl: Assets.images.attraction8Image,
                ),
                transition: Transition.downToUp);
          },
          child: customImageAdventureStack(
              context,
              Assets.images.attraction8Image,
              "Grotte Di Collepardo",
              "10:00 / 16:00",
              "Collepardo",
              "9€ / persona"),
        )
      ],
    );
  }

  customImageAdventureStack(BuildContext context, String imageUrl, String text,
      String subText, String location, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: pageMarginHorizontal / 1.2, vertical: pageMarginVertical),
      child: Container(
        height: 300.h,
        width: double.maxFinite,
        child: Stack(
          clipBehavior: Clip.none,
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
                bottom: -10.h,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: pageMarginHorizontal),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: AppColors.customWhiteTextColor,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
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
                            4.heightBox,
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  color: AppColors.subTitleColor,
                                  size: 18,
                                ),
                                5.widthBox,
                                Text(
                                  subText,
                                  style: context.text.bodyMedium?.copyWith(
                                      color: AppColors.blackColor,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                            5.heightBox,
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  color: AppColors.subTitleColor,
                                  size: 18,
                                ),
                                5.widthBox,
                                Text(
                                  location,
                                  style: context.text.bodyMedium?.copyWith(
                                      color: AppColors.blackColor,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        4.heightBox,
                        Container(
                          width: double.maxFinite,
                          child: Text(
                            price,
                            textAlign: TextAlign.end,
                            style: context.text.bodyMedium
                                ?.copyWith(color: Colors.red, fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
