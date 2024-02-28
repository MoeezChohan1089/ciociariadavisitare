import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../contact/contact_us.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Text(
          "Impostazioni",
          style: context.text.bodyMedium?.copyWith(
              color: AppColors.blackColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(const ContactUsForm());
              },
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: AppColors.customWhiteTextColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.contactUsIcon,
                      width: 28.w,
                    ),
                    14.widthBox,
                    Text(
                      "CONTATTACI",
                      style: context.text.bodyMedium?.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            14.heightBox,
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: AppColors.customWhiteTextColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.rateUsIcon,
                    width: 28.w,
                  ),
                  14.widthBox,
                  Text(
                    "Valutaci",
                    style: context.text.bodyMedium?.copyWith(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
            ),
            14.heightBox,
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: AppColors.customWhiteTextColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.shareAppIcon,
                    width: 28.w,
                  ),
                  14.widthBox,
                  Text(
                    "Condividi app",
                    style: context.text.bodyMedium?.copyWith(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
            ),
            14.heightBox,
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: AppColors.customWhiteTextColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.privacyPolicyIcon,
                    width: 28.w,
                  ),
                  14.widthBox,
                  Text(
                    "Politica sulla riservatezza",
                    style: context.text.bodyMedium?.copyWith(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
