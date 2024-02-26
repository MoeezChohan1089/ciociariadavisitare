import 'package:get/get.dart';

import '../bottom_navigation/view.dart';

class SplashLogic extends GetxController {
  static SplashLogic get to => Get.find();

  @override
  void onInit() {
    // myNavigator();
    super.onInit();
  }

  myNavigator() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.off(() => BottomNavBarPage());
  }
}
