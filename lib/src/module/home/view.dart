import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_app_bar.dart';
import 'components/category_section.dart';
import 'components/much_more_section.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());

  List sliderImages = [
    Assets.images.cycleImage,
    Assets.images.studyImage,
    Assets.images.girlTrackImage
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(
        title: "Scegli, Prenota, Esplora",
        subTitle: "VISITA LA CIOCIARIA CON NOI",
        showBorder: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: pageMarginHorizontal / 1.2,
                  vertical: pageMarginVertical / 2),
              child: Text(
                "RENDE LE TUE ESPERIENZE INDIMENTICABILI",
                style: context.text.bodyMedium?.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp),
              ),
            ),
            10.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(sliderImages.length, (index) {
                  return Container(
                    height: 260.h,
                    width: 290.w,
                    margin: EdgeInsets.only(
                      left: pageMarginHorizontal / 1.2,
                      right: index == sliderImages.length - 1
                          ? pageMarginHorizontal / 1.2
                          : 0,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          sliderImages[index],
                          fit: BoxFit.cover,
                        )),
                  );
                }),
              ),
            ),
            10.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: pageMarginHorizontal / 1.2,
                  vertical: pageMarginVertical / 2),
              child: Text(
                "PERCORSI NATURALISTICI E TANTO ALTRO",
                style: context.text.bodyMedium?.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp),
              ),
            ),
            // 10.heightBox,
            const MuchMoreSection(),
            const CategorySection(),
          ],
        ),
      ),
    );
  }
}
