import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_app_bar.dart';
import '../../utils/constants/colors.dart';
import 'components/routes_section.dart';
import 'logic.dart';

class RoutesPage extends StatelessWidget {
  RoutesPage({Key? key}) : super(key: key);

  final logic = Get.put(RoutesLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(
        title: "Percorsi",
        subTitle: "Dove L'Avventura Prende Vita",
        showBorder: false,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          8.heightBox,
          const RoutesSection(),
        ],
      )),
    );
  }
}
