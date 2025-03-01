import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../custom_widgets/custom_container_box.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: pageMarginHorizontal / 1.2,
          vertical: pageMarginVertical / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "TI ASPETTANO MOLTISSIME ATTIVITA'",
            style: context.text.bodyMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          pageMarginVertical.heightBox,
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                mainAxisSpacing: 16.w,
                crossAxisSpacing: 16.h),
            children: [
              customContainerImageBox(
                  context, Assets.images.landscapeImage, "Paesaggi"),
              customContainerImageBox(
                  context, Assets.images.trekkingImage, "Trekking"),
              customContainerImageBox(
                  context, Assets.images.museumsImage, "Musei"),
              customContainerImageBox(
                  context, Assets.images.mountainImage, "Valutazioni Positive"),
              customContainerImageBox(
                  context, Assets.images.campingImage, "Camping"),
              customContainerImageBox(
                  context, Assets.images.routesImage, "Percorsi"),
            ],
          )
        ],
      ),
    );
  }
}
