import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/constants/assets.dart';
import '../../utils/constants/colors.dart';
import '../home/view.dart';
import 'components/bottom_menu_item.dart';
import 'logic.dart';

class BottomNavBarPage extends StatefulWidget {
  BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  final logic = Get.put(BottomNavigationLogic());

  @override
  void initState() {
    myBottomNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: logic.onWillPop,
      child: Obx(() {
        return Scaffold(
          body: IndexedStack(
            index: logic.currentPageIndex.value,
            children: [
              HomePage(),
              HomePage(),
              HomePage(),
              HomePage(),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              height: 53.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: const BoxDecoration(
                  // color: Colors.yellow,
                  border: Border(
                top: BorderSide(
                  color: AppColors.appHintColor,
                  width: 0.5,
                ),
              )),
              child: Row(
                children: [
                  BottomNavItem(
                    title: "HOME",
                    indexValue: 0,
                    activeIcon: Assets.icons.trafficSignIcon,
                    inActiveIcon: Assets.icons.trafficSignIcon,
                    // onPress: () => ,
                  ),
                  BottomNavItem(
                    title: "ATTRAZIONI",
                    indexValue: 1,
                    activeIcon: Assets.icons.trafficRulesIcon,
                    inActiveIcon: Assets.icons.trafficRulesIcon,
                    // onPress: () => ,
                  ),
                  BottomNavItem(
                    title: "CULTURA",
                    indexValue: 2,
                    activeIcon: Assets.icons.trafficTestIcon,
                    inActiveIcon: Assets.icons.trafficTestIcon,
                    // onPress: () => ,
                  ),
                  BottomNavItem(
                    title: "PERCORSI",
                    indexValue: 3,
                    activeIcon: Assets.icons.trafficGraphIcon,
                    inActiveIcon: Assets.icons.trafficGraphIcon,
                    // onPress: () => ,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  myBottomNavigation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // statusBarColor: Colors.transparent, // Make status bar transparent
      statusBarIconBrightness: Brightness.dark, // Make status bar icons dark
      systemNavigationBarColor: Colors.white, // Set navigation bar color
      systemNavigationBarIconBrightness:
          Brightness.dark, // Navigation bar icons
    ));
  }
}
