import 'package:ciociariadavisitare/src/custom_widgets/custom_button.dart';
import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../contact/contact_us.dart';

class RouteEightDetailScreen extends StatelessWidget {
  final String imageUrl;

  const RouteEightDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.customWhiteTextColor,
        elevation: 0,
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
        padding: EdgeInsets.symmetric(
            horizontal: pageMarginHorizontal / 1.2,
            vertical: pageMarginVertical / 2),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Una tra le escursioni più suggestive della Ciociaria. Avvolti da strette pareti e accompagnati dallo scorrere delle acqua",
              style: context.text.bodyMedium?.copyWith(
                  color: AppColors.subTitleColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
            20.heightBox,
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    imageUrl,
                    width: double.maxFinite,
                    height: 180.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                    bottom: 10,
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            launchUrl(Uri.parse(
                                "https://www.google.com/maps?ll=41.741086,13.686713&z=10&t=m&hl=en-PK&gl=US&mapclient=embed&q=Pescosolido+03030+Province+of+Frosinone+Italy"));
                          },
                          child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: AppColors.customWhiteTextColor,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.location_searching_outlined,
                                color: AppColors.subTitleColor,
                              )),
                        ),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(),
                            // Container(
                            //   // width: double.maxFinite,
                            //   padding: EdgeInsets.all(12),
                            //   decoration: BoxDecoration(
                            //       color: AppColors.customWhiteTextColor,
                            //       shape: BoxShape.circle),
                            //   child: SvgPicture.asset(
                            //     Assets.icons.arViewIcon,
                            //     width: 24.w,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
            pageMarginVertical.heightBox,
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.timerIcon,
                      width: 15.w,
                    ),
                    5.widthBox,
                    Text(
                      "Durata: 2h",
                      maxLines: 2,
                      style: context.text.bodyMedium?.copyWith(
                          height: 1.2,
                          color: AppColors.blackColor,
                          fontSize: 13.sp),
                    )
                  ],
                ),
                Expanded(
                  // flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.personIcon,
                        width: 15.w,
                      ),
                      5.widthBox,
                      Text(
                        "Difficoltà: Facile",
                        style: context.text.bodyMedium?.copyWith(
                            color: AppColors.blackColor, fontSize: 13.sp),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.locationPinIcon,
                      width: 13.w,
                    ),
                    5.widthBox,
                    Text(
                      "6 Km",
                      style: context.text.bodyMedium?.copyWith(
                          color: AppColors.blackColor, fontSize: 13.sp),
                    )
                  ],
                ),
                16.widthBox,
              ],
            ),
            20.heightBox,
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: pageMarginHorizontal * 2.5),
              child: CustomButton(
                text: "CONTATTACI",
                fontSize: 16.sp,
                onTap: () {
                  Get.to(const ContactUsForm());
                },
              ),
            ),
            20.heightBox,
            Text(
              "DESCRIZIONE".toUpperCase(),
              style: context.text.bodyMedium?.copyWith(
                  color: AppColors.subTitleColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            10.heightBox,
            Text(
              "Una bella escursione, immersi nel verde e tra i colori dei fiori.\n\nIl Lacerno è un piccolo affluente del Liri che sgorga da pendici carsiche nel territorio di Pescosolido. Il Vallone Lacerno è situato tra i Comuni di Pescosolido e Campoli Appennino (FR), rientra nella fascia di protezione esterna del Parco Nazionale d’Abruzzo, Lazio e Molise.\n\nUn percorso senza particolari difficoltà specialmente nel primo tratto,  richiede però un minimo di esperienza nel secondo tratto poiché si dovranno affrontare diversi guadi.\n\nIl sentiero spesso non è tracciato prevedendo un tratto di cammino tra le acqua fredde del fiume per giungere alle gole.\n\nLe gole sono raggiungibili attraverso un sentiero che parte dalla Fontana Donata località Pescosolido oppure con il sentiero proveniente da Campoli Appennino con partenza da località Querceto.\n\nPartenza da Pescosolido\n\nArrivo a Pescosolido\n\nAbbigliamento tecnico",
              style: context.text.bodyMedium
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
