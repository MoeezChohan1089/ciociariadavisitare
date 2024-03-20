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

class CultureSixDetailScreen extends StatelessWidget {
  final String imageUrl;

  const CultureSixDetailScreen({super.key, required this.imageUrl});

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
              "Dalle Radici Agli Orizzonti: Scopri il Museo Gente di Ciociaria e la Vita nel Basso Lazio",
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
                                "https://www.google.com/maps/place/Digital+Arce/@46.423669,-57.939788,10z/data=!4m6!3m5!1s0xf5f5e041595cd77:0xfec00f6083a81d0f!8m2!3d46.423669!4d-57.9397877!16s%2Fg%2F11sryf3z0x?hl=en-PK&entry=ttu"));
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
                    Container(
                      width: 80.w,
                      child: Text(
                        "Attualmente chiuso",
                        maxLines: 2,
                        style: context.text.bodyMedium?.copyWith(
                            height: 1.2,
                            color: AppColors.blackColor,
                            fontSize: 13.sp),
                      ),
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
                      "Arce",
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
              "Il Museo Gente di Ciociaria: Esplorando le Radici della Vita e del Lavoro nel Basso Lazio\n\nIl Museo Gente di Ciociaria è un’emozionante testimonianza della vita e delle tradizioni dei nativi del Basso Lazio. Frutto della collaborazione tra la XV Comunità Montana Valle del Liri e la Regione Lazio, Assessorato alla Cultura, questo museo demoantropologico è un omaggio alla gente ciociara che abitava le pittoresche colline e vallate dei fiumi Sacco e Liri. Molto spesso, questi abitanti migravano verso diverse destinazioni alla ricerca di lavoro e opportunità, tra le quali le Paludi Pontine, la Campagna Romana e persino la grande città di Roma, oltre a spostarsi nelle regioni confinanti per partecipare a mercati, transumanze e pellegrinaggi.\n\nIl museo riempie un vuoto nelle ricerche dedicate alla parte più umile e laboriosa della popolazione ciociara, specialmente quella agro-pastorale. Sebbene siano giunte a noi alcune raccolte frammentarie di canti, preghiere, favole e detti da appassionati di tradizioni popolari, gli studiosi finora non hanno sistematicamente esplorato la ricchezza della civiltà della Gente Ciociara. Questa ricca esposizione ci offre una preziosa finestra sulle condizioni di vita degli ultimi secoli, un periodo di transizione cruciale dall’epoca rurale all’industrializzazione e al terziario. Un viaggio attraverso questo museo ci permette di comprendere meglio le radici culturali e sociali che hanno plasmato la comunità ciociara nel corso del tempo.\n\nIndirizzo: Corso Umberto I, 03032 Arce (Fr)",
              style: context.text.bodyMedium
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
