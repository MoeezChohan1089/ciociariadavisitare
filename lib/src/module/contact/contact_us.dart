import 'package:ciociariadavisitare/src/module/bottom_navigation/logic.dart';
import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_text_field.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/margins_spacnings.dart';

class ContactUsForm extends StatefulWidget {
  const ContactUsForm({super.key});

  @override
  State<ContactUsForm> createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  final logic = Get.put(BottomNavigationLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Text(
          "CONTATTACI",
          style: context.text.bodyMedium?.copyWith(
              color: AppColors.blackColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: ListView(
          children: [
            10.heightBox,
            SvgPicture.asset(
              Assets.icons.contactScreenIcon,
              width: 255.w,
            ),
            40.heightBox,
            CustomTextField(
              controller: nameController,
              keyBoardType: TextInputType.text,
              hint: "Name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name is required';
                }
                return null;
              },
            ),
            // 10.heightBox,
            // CustomTextField(
            //   controller: emailController,
            //   keyBoardType: TextInputType.emailAddress,
            //   hint: "Email",
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Email is required';
            //     } else if (!GetUtils.isEmail(value)) {
            //       return 'Enter valid email address';
            //     }
            //     return null;
            //   },
            // ),
            10.heightBox,
            CustomTextField(
              controller: messageController,
              // keyBoardType: TextInputType.,
              hint: "II Tuo Messaggio*",
              maxLines: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                } else if (!GetUtils.isEmail(value)) {
                  return 'Enter valid email address';
                }
                return null;
              },
            ),
            20.heightBox,
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: pageMarginHorizontal * 2.5),
              child: Obx(() {
                return CustomButton(
                  text: "INVIA MESSAGGIO",
                  fontSize: 16.sp,
                  onTap: () async {
                    logic.isProcessing.value = true;
                    await Future.delayed(const Duration(seconds: 2));
                    logic.isProcessing.value = false;
                    sendEmail(
                      name: nameController.text,
                      email: emailController.text,
                      message: messageController.text,
                    );
                  },
                  isProcessing: logic.isProcessing.value,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> sendEmail({
    required String name,
    required String email,
    required String message,
  }) async {
    final emailUri = Uri(
      scheme: 'mailto',
      path: 'info@ciociariadavisitare.it',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Contact from $name',
        'body': message,
      }),
    );
    launchUrl(emailUri);

    // if (await canLaunch(emailUri.toString())) {
    //   await launch(emailUri.toString());
    // } else {
    //   throw 'Could not launch $emailUri';
    // }
    //
    // Uri(
    //   scheme: 'mailto',
    //   path: 'info@ciociariadavisitare.it',
    //   query: 'subject Contact from $name',
    //   'body Name: $name\nEmail: $email\nMessage: $message', //add subject and body here
    // );
  }

  String encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
