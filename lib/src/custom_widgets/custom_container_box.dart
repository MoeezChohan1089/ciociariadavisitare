import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../utils/constants/colors.dart';

customContainerPercentageBox(
    BuildContext context, String percentage, String title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      color: AppColors.customWhiteTextColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.14), // shadow color
          spreadRadius: 3, // spread radius
          blurRadius: 5, // blur radius
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircularPercentIndicator(
          radius: 50.r,
          lineWidth: 12.0,
          percent: 0.85,
          center: Text(
            percentage,
            style: context.text.bodyMedium?.copyWith(fontSize: 16.sp),
          ),
          backgroundColor: Colors.grey.shade200,
          progressColor: AppColors.subTitleColor,
        ),
        // 16.heightBox,
        Text(
          title,
          textAlign: TextAlign.center,
          style: context.text.bodyMedium?.copyWith(
              color: AppColors.blackColor,
              height: 1.2,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

customContainerImageBox(BuildContext context, String imageUrl, String title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      color: AppColors.customWhiteTextColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.14), // shadow color
          spreadRadius: 3, // spread radius
          blurRadius: 5, // blur radius
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.subTitleColor),
          child: Image.asset(
            imageUrl,
            width: 60.w,
          ),
        ),
        // 16.heightBox,
        Text(
          title,
          style: context.text.bodyMedium?.copyWith(
              color: AppColors.blackColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
