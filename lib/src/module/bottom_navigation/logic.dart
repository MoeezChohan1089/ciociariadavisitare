import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

import '../../custom_widgets/exit_dialogue.dart';
import '../home/view.dart';

class BottomNavigationLogic extends GetxController {
  static BottomNavigationLogic get to => Get.find();

  final advancedDrawerController = AdvancedDrawerController();
  final GlobalKey<ScaffoldState> navScaffoldKey = GlobalKey();
  RxBool isProcessing = false.obs;

  RxInt currentPageIndex = 0.obs;
  RxBool isFancyDrawer = true.obs; //---- 1 for fancy 2 for Simple

  Widget bottomPages(
    BuildContext context,
  ) {
    switch (currentPageIndex.value) {
      case 0:
        {
          return HomePage();
        }
      case 1:
        {
          return HomePage();
        }
      case 2:
        {
          return HomePage();
        }
      case 3:
        {
          return HomePage();
        }
      default:
        {
          return HomePage();
        }
    }
  }

  Future<bool> onWillPop() async {
    if (currentPageIndex.value != 0) {
      currentPageIndex.value = 0;
      return false;
    } else {
      final value = await showExitEnsureDialog();
      if (value != null) {
        return Future.value(value);
      } else {
        return Future.value(false);
      }
    }
  }

  void handleMenuButtonPressed() {
    advancedDrawerController.showDrawer();
  }
}
