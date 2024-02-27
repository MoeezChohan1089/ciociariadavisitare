import 'package:ciociariadavisitare/src/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_app_bar.dart';
import 'components/adventure_section.dart';
import 'logic.dart';

class AttractionsPage extends StatelessWidget {
  AttractionsPage({Key? key}) : super(key: key);

  final logic = Get.put(AttractionsLogic());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        title: "Attrazioni",
        subTitle:
            "Esplora le Meraviglie della Ciociaria: Attrazioni da Non Perdere nella Tua Avventura",
        showBorder: false,
      ),
      body: SingleChildScrollView(child: AdventureSection()),
    );
  }
}
