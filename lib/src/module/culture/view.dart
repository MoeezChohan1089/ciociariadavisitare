import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_app_bar.dart';
import '../../utils/constants/colors.dart';
import 'components/culture_section.dart';
import 'logic.dart';

class CulturePage extends StatelessWidget {
  CulturePage({Key? key}) : super(key: key);

  final logic = Get.put(CultureLogic());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        title: "Cultura",
        subTitle:
            "Scopri l'Armonia tra Spirito e Cultura: Chiese e Musei Imperdibili da Visitare nella Ciociaria",
        showBorder: false,
      ),
      body: SingleChildScrollView(child: CultureSection()),
    );
  }
}
