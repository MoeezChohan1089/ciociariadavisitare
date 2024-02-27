import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../custom_widgets/custom_container_box.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

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
          pageMarginVertical.heightBox,
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8.h,
                mainAxisSpacing: 16.w,
                crossAxisSpacing: 16.h),
            children: [
              customContainerPercentageBox(context, "85%", "Clienti\nSoddisfatti"),
              customContainerPercentageBox(context, "75%", "Prezzi \nPiù Bassi"),
              customContainerPercentageBox(context, "70%", "Destinazioni\nE Tour"),
              customContainerPercentageBox(context, "90%", "Valutazioni\nPositive"),
            ],
          )
        ],
      ),
    );
  }
}
