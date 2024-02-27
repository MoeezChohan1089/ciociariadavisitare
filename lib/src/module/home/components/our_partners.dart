import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/margins_spacnings.dart';

class PartnersSection extends StatelessWidget {
  const PartnersSection({super.key});

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
            "I NOSTRI PARTNER",
            style: context.text.bodyMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        8.heightBox,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                mainAxisSpacing: 50.h),
            children: [
              customImagePartnerStack(context, Assets.images.partnerImage,
                  "Gran Cacio", "Caseificio"),
              customImagePartnerStack(context, Assets.images.partner1Image,
                  "Dolce Tagliata", "Macelleria"),
              customImagePartnerStack(context, Assets.images.partner2Image,
                  "Chocolart", "Pasticceria"),
              customImagePartnerStack(context, Assets.images.partner3Image,
                  "Salumi & Sapori", "Enoteca")
            ],
          ),
        ),
        40.heightBox,
      ],
    );
  }

  customImagePartnerStack(
      BuildContext context, String imageUrl, String text, String subText) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pageMarginHorizontal / 2,
      ),
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
            bottom: -25
                .h, // Adjust this value to have the container overlap the image half way
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: pageMarginHorizontal / 2),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.customWhiteTextColor,
                  borderRadius: BorderRadius.circular(8.r),
                  // Add a shadow if needed to distinguish the container from the image
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, -2), // Shadow direction upwards
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: context.text.bodyMedium?.copyWith(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      subText,
                      style: context.text.bodyMedium?.copyWith(
                        color: AppColors.subTitleColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
