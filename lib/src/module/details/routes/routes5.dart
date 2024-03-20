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

import '../../../custom_widgets/3dModels/MuraCiclopiche/muraCiclopiche.dart';
import '../../contact/contact_us.dart';

class RouteFiveDetailScreen extends StatelessWidget {
  final String imageUrl;

  const RouteFiveDetailScreen({super.key, required this.imageUrl});

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
              "Le mura ciclopiche di Alatri uno dei più straordinari esempi di architettura megalitica del mondo antico nel territorio ciociaro",
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
                                "https://maps.google.com/maps?ll=41.797519,13.334915&z=10&t=m&hl=en-PK&gl=US&mapclient=embed&q=Alatri%2003011%20Province%20of%20Frosinone%20Italy"));
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
                            GestureDetector(
                              onTap: () {
                                Get.to(const MuraCiclopichoModelViewerPage());
                              },
                              child: Container(
                                // width: double.maxFinite,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: AppColors.customWhiteTextColor,
                                    shape: BoxShape.circle),
                                child: SvgPicture.asset(
                                  Assets.icons.arViewIcon,
                                  width: 24.w,
                                ),
                              ),
                            ),
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
                      "Durata: 30min",
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
                      "2 Km",
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
              "Le Mura Ciclopiche sono imponenti strutture in pietra risalenti al periodo pre-romano, costruite con massi di pietra squadrati di dimensioni gigantesche. Queste mura, alte fino a 12 metri in alcuni punti, circondano l’antico nucleo urbano di Alatri, creando una fortezza naturale. Sono chiamate “ciclopiche” perché, secondo la leggenda, furono costruite da ciclopi giganti.\n\nUna tappa imprescindibile per chi visita la Ciociaria.\n\nQueste mura delineano un’area trapezoidale di circa 19.000 metri quadrati e raggiungono la loro massima altezza nell’angolo sud-orientale, noto come il “Pizzale”. Qui, i massi sono sovrapposti in quindici strati, con la pietra angolare di base che presenta un bassorilievo raffigurante una figura alata. Questa raffigurazione è stata interpretata sia come una figura alata che come un globo solare, il quale potrebbe rappresentare un omaggio al Sole che sorge proprio da questa direzione.\n\nLa datazione delle Mura Ciclopiche di Alatri è stata oggetto di dibattito tra gli studiosi. L’archeologo francese Louis Charles François Petit-Radel (1756-1836) ha proposto una datazione che colloca la fondazione di Alatri prima della Seconda Colonia Pelasgica, datata al 1539 a.C. Tuttavia, la scienza archeologica ha suggerito una possibile origine ernica con ristrutturazioni significative in epoca romana.\n\nQueste mura rimangono un enigma affascinante nel panorama archeologico italiano, rappresentando una testimonianza straordinaria dell’abilità ingegneristica e costruttiva dell’antichità. La loro esatta datazione può essere oggetto di futuri studi e ricerche per gettare ulteriori luci sulla loro storia.\n\n\n–Arrivo in Centro Storico: Arriverai probabilmente nella parte centrale della città. Parcheggia l’auto o scendi dall’autobus o dal treno e dirigiti verso il centro storico di Alatri\n\n-Segui le Indicazioni: Nella città vecchia, dovresti troverai le indicazioni per le Mura Ciclopiche. Le mura sono situate su una collina che sovrasta il centro storico\n\n-Salita alle Mura: La salita alle mura potrebbe richiedere un po’ di tempo e sforzo, ma ne vale assolutamente la pena. Lungo il percorso, troverai segnali informativi e punti panoramici da cui potrai ammirare la città sottostante.",
              style: context.text.bodyMedium
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
