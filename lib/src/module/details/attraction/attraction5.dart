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

class AttractionFiveDetailScreen extends StatelessWidget {
  final String imageUrl;

  const AttractionFiveDetailScreen({super.key, required this.imageUrl});

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
              "Pozzo d'Antullo: Un Viaggio nelle Profondità dell'Incredibile",
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
                                "https://www.google.com/maps?ll=41.770628,13.368316&z=10&t=m&hl=en-PK&gl=US&mapclient=embed&cid=1492083237056753539"));
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
                      "10am-16pm",
                      style: context.text.bodyMedium?.copyWith(
                          color: AppColors.blackColor, fontSize: 13.sp),
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
                        "Individuale/Gruppi",
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
                      "Collepardo",
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
              "Situato a circa 1 km da Collepardo, ai piedi delle maestose montagne La Monna e Rotonaria, all’interno del complesso dei Monti Ernici, si trova il fenomenale Pozzo d’Antullo, una vasta voragine carsica generata dal cedimento di una grotta sotterranea. Le pareti verticali del pozzo sono ancora segnate dallo stillicidio, ovvero la costante caduta di gocce d’acqua, e sono adornate da numerose formazioni di stalattiti. Tra queste, alcune presentano curve suggestive, probabilmente scolpite dall’azione del vento proveniente da cunicoli laterali, che ha influenzato il deposito dei cristalli di calcare, plasmandone le forme.\n\nCon una profondità di circa 60 metri e una larghezza di 300 metri, questo incredibile pozzo rappresenta un’eccezionale rarità in Europa sia per le sue dimensioni straordinarie sia per la sorprendente vegetazione che si sviluppa sul suo fondo, con alberi che raggiungono altezze fino a 20 metri.\n\nNel passato, il pozzo veniva utilizzato come pascolo per pecore, che venivano calate lungo le pareti verticali mediante funi all’inizio della primavera e lasciate libere fino all’inizio dell’inverno. Grazie alle sue caratteristiche uniche, il Pozzo d’Antullo è stato avvolto da leggende e aneddoti nel corso del tempo. Lo storico tedesco Ferdinand Gregorovius ha scritto: “Mi dissero che il pozzo era un tempo un ampio cortile circolare; i contadini osarono un giorno battere il grano lì, nonostante si celebrasse solennemente l’Assunzione della Beata Vergine. La Madonna, indignata da tale sacrilegio, fece crollare improvvisamente il cortile con tutto ciò che si trovava al suo interno, formando così la cavità circolare del pozzo. D’altra parte, poiché non vi sono vulcani nelle vicinanze, l’opinione di alcuni potrebbe essere fondata; sostengono che il pozzo fosse in origine una caverna il cui soffitto collassò improvvisamente, dando vita a ciò che vediamo oggi”.\n\nTutti giorni\nOrario continuato dalle ore 10:00 alle ore 16:00",
              style: context.text.bodyMedium
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
