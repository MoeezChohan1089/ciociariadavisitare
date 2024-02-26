import 'dart:async';

import 'package:ciociariadavisitare/src/utils/constants/assets.dart';
import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../bottom_navigation/view.dart';
import 'logic.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final logic = Get.put(SplashLogic());
  double progress = 0; // State variable for progress
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    const duration = Duration(milliseconds: 50); // Duration of each step
    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        progress += 0.01; // Increment the progress
        if (progress >= 1) {
          // When progress reaches 100%
          progress = 1;
          timer.cancel(); // Stop the timer
          Get.off(() => BottomNavBarPage()); // Navigate to the next screen
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Make sure to cancel the timer when disposing the widget
    super.dispose();
  }

  void _navigateToNextScreen() {
    // Navigate to next screen
    // For example: Get.offAll(NextPage());
    Get.off(() => BottomNavBarPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customSplashBackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              Assets.images.splashBackgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.icons.compulsoryRoadSign),
                SizedBox(height: 10.h),
                Text(
                  "Ciociaria Da Visitare",
                  style: TextStyle(
                    color: AppColors.customWhiteTextColor,
                    fontSize: 24.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50.h, // Adjust the positioning as per the design
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: pageMarginHorizontal * 2),
              child: Column(
                children: [
                  // FAProgressBar(
                  //   currentValue: progress,
                  //   size: 14.h,
                  //   borderRadius: BorderRadius.circular(100.r),
                  //   displayText: '%',
                  //   displayTextStyle:
                  //       TextStyle(fontSize: 10.sp, color: Colors.white),
                  //   progressColor: Colors.blue.shade600,
                  //   backgroundColor: Colors.grey.shade200,
                  // ),
                  SizedBox(
                    height: 10.h,
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    "Loading",
                    style: TextStyle(
                      color: AppColors.customWhiteTextColor,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
