import 'package:carousel_slider/carousel_slider.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/assets.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/margins_spacnings.dart';

class BookEbikeSection extends StatelessWidget {
  BookEbikeSection({super.key});

  List carosalSlidesImages = [
    Assets.images.lagoImage,
    Assets.images.cioImage,
    Assets.images.imageImage
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: pageMarginHorizontal / 1.2,
              vertical: pageMarginVertical / 2),
          child: Text(
            "PRENOTA LA TUA EBIKE",
            style: context.text.bodyMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        8.heightBox,
        CarouselSlider(
          items: List.generate(carosalSlidesImages.length, (index) {
            return Container(
              height: 260.h,
              width: 290.w,
              // margin: EdgeInsets.only(
              //   left: pageMarginHorizontal / 1.2,
              //   right: index == carosalSlidesImages.length - 1
              //       ? pageMarginHorizontal / 1.2
              //       : 0,
              // ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    carosalSlidesImages[index],
                    fit: BoxFit.cover,
                  )),
            );
          }),
          options: CarouselOptions(
            height: 260.h,
            autoPlay: true,
            viewportFraction: 0.83,
            enlargeFactor: 0.2,
            // aspectRatio: 17 / 10,
            // autoPlayCurve: Curves.bounceInOut,
            enlargeCenterPage: true,
            // enlargeFactor: 0.5,
            // autoPlayInterval: const Duration(seconds: 2),
          ),
        ),
      ],
    );

    //   SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: List.generate(sliderImages.length, (index) {
    //       return Container(
    //         height: 260.h,
    //         width: 290.w,
    //         margin: EdgeInsets.only(
    //           left: pageMarginHorizontal / 1.2,
    //           right: index == sliderImages.length - 1
    //               ? pageMarginHorizontal / 1.2
    //               : 0,
    //         ),
    //         child: ClipRRect(
    //             borderRadius: BorderRadius.circular(10.r),
    //             child: Image.asset(
    //               sliderImages[index],
    //               fit: BoxFit.cover,
    //             )),
    //       );
    //     }),
    //   ),
    // );
  }
}
