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

class RouteOneDetailScreen extends StatelessWidget {
  final String imageUrl;

  const RouteOneDetailScreen({super.key, required this.imageUrl});

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
              "Poco più di 300 km attraverso il cuore dell’Italia: un percorso che parte dall’Umbria per percorre tutto il Lazio, fino al suo estremo confine meridionale.",
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
                                "https://www.google.com/maps?ll=-31.97057,115.836168&z=10&t=m&hl=en-PK&gl=US&mapclient=embed&q=Subiaco+Western+Australia+6008+Australia"));
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
                      "Durata: 6 giorni",
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
                        "Difficoltà: Difficile",
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
                      "125 Km",
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
              "Il percorso della via Benedicti nel Lazio è un cammino che si sviluppa partendo da Subiaco e concludendosi a Montecassino, rispettivamente “culla” e “capitale” del monachesimo occidentale.\n\nNelle nove tappe laziali si incontreranno 7 importanti monumenti religiosi del Lazio e della Ciociaria:\n\n1.Santa Scolastica,\n\n2.Sacro Speco a Subiaco,\n\n3.Certosa di Trisulti,\n\n4.Badia di San Sebastiano ad Alatri,\n\n5.Abbazia di Casamari,\n\n6.Abbazia di San Domenico a Sora,\n\n7.Abbazia di Montecassino.\n\nLe tappe ciociare toccano Trevi nel Lazio, ai piedi dei monti Simbruini, per proseguire verso i monti Ernici, attraversando Vico nel Lazio, Collepardo, e la Certosa di Trisulti.\n\nSi prosegue raggiungendo il fiume Liri, con una sosta all’Abbazia cistercense di Casamari, esempio di gotico in Italia. Quindi Arpino, paese di estrema importanza storica-culturale.\n\nDopo di che i pellegrini si introdurranno nelle gole del fiume Melfa, sede di tempi antichi.\n\nSi oltrepassa Roccasecca, luogo natale di S. Tommaso d’Aquino, arrivando finalmente all’Abbazia di Montecassino, raggiunta percorrendo in parte il sentiero utilizzato dai militari polacchi nel maggio del 1944.\n\nRicordiamo che l’ abbazia di Montecassino è casa madre di un ordine che si estendeva da un confine all’altro dell’Europa e che più di ogni altro ha contribuito alla nascita di una cultura cristiana europea.",
              style: context.text.bodyMedium
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
