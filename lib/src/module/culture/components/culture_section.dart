import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CultureSection extends StatelessWidget {
  const CultureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customImageAdventureStack(
            context,
            Assets.images.cultureImage,
            "Casa Museo Tommaso Gismondi",
            "Attualmente chiuso",
            "Anagni",
            "Casa Museo Tommaso Gismondi: Un Viaggio nell’Arte e Nell’Anima di Anagni"),
        customImageAdventureStack(
            context,
            Assets.images.culture1Image,
            "Museo Académie Vitti",
            "9:00 / 12:30",
            "Atina",
            "Esplora l’Arte e la Cultura presso il Museo Académie Vitti ad Atina"),
        customImageAdventureStack(
            context,
            Assets.images.culture2Image,
            "Museo Archeologico Ernico",
            "9:00 / 12:30",
            "Anagni",
            "Museo Archeologico Ernico: Un Viaggio nel Passato di Anagni"),
        customImageAdventureStack(
            context,
            Assets.images.culture3Image,
            "Museo della Cattedrale Di Anagni",
            "9:00 / 18:00",
            "Anagni",
            "Tesori d’Arte e Fede: Esplora il Museo della Cattedrale di Anagni"),
        customImageAdventureStack(
            context,
            Assets.images.culture4Image,
            "Museo Della Civiltà Contadina E dell'Ulivo",
            "9:00 / 18:00",
            "Pastena",
            "Scopri le Radici Rurali e l’Eredità dell’Ulivo al Museo della Civiltà Contadina e dell’Ulivo a Pastena"),
        customImageAdventureStack(
            context,
            Assets.images.culture5Image,
            "Museo Gente di Ciociaria",
            "Attualmente Chiuso",
            "Arce",
            "Dalle Radici Agli Orizzonti: Scopri il Museo Gente di Ciociaria e la Vita nel Basso Lazio"),
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
                                Container(
                                  width: 230.w,
                                  child: Text(
                                    text,
                                    style: context.text.bodyMedium?.copyWith(
                                        color: AppColors.subTitleColor,
                                        fontSize: 16.sp),
                                  ),
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
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            style: context.text.bodyMedium?.copyWith(
                                color: AppColors.blackColor, fontSize: 14.sp),
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
