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

class RouteSevenDetailScreen extends StatelessWidget {
  final String imageUrl;

  const RouteSevenDetailScreen({super.key, required this.imageUrl});

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
              "Da una pianura erbosa fino in vetta!",
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
                                "https://www.google.com/maps?ll=41.77174,13.489009&z=10&t=m&hl=en-PK&gl=US&mapclient=embed&q=prato+di+campoli"));
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
                      "Durata: 5h",
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
                        "Difficoltà: Medio",
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
                      "13 Km",
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
              "Si parte dall’Area Naturalistica “Prato di Campoli”, un pianoro erboso a 1.143 metri, dove è possibile parcheggiare la propria auto  prima di iniziare la salita.\n\nLa passeggiata è gradevole e di media portata. Sono 900 metri di dislivello dal parcheggio di Prato di Campoli (1143m) alla cima del Pizzo Deta (041m) che per pochi metri fa parte del Club2000 dell’Appennino. Il percorso ha una lunghezza di circa 13 chilometri per un totale di 5 ore. Con delle varianti si può effettuare un anello che comprende le vette confinanti.\n\nIn primavere ed estate è possibile arrivare in cima e godere di un dolce venticello, così da prendere una bella boccata d’aria dopo una lunga salita. Per gli amanti del freddo d’invero è possibile trovare neve sulla vetta.\n\nNaturalmente è consigliato un abbigliamento tecnico e comodo, scarpe da trekking ed acqua a sufficienza!\n\nI meno temerari potranno passeggiare nella piana tra natura e animali allo stato selvaggio. Sono presenti dei piccoli chioschi per bevande e cibi ma è anche possibile fare una grigliata o un pic nic.\n\nPartenza da Prato di Campoli\n\nParcheggio disponibile\n\nAbbigliamento tecnico",
              style: context.text.bodyMedium
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
