import 'package:ciociariadavisitare/src/custom_widgets/custom_app_bar.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelViewer2Page extends StatefulWidget {
  const ModelViewer2Page({super.key});

  @override
  State<ModelViewer2Page> createState() => _ModelViewer2PageState();
}

class _ModelViewer2PageState extends State<ModelViewer2Page> {
  String js = '''
(() => {
  const modelViewer = document.querySelector('#orbit-demo');
  const orbitCycle = [
    '45deg 55deg 4m',
    '-60deg 110deg 2m',
    modelViewer.cameraOrbit
  ];

  setInterval(() => {
    const currentOrbitIndex = orbitCycle.indexOf(modelViewer.cameraOrbit);
    modelViewer.cameraOrbit =
        orbitCycle[(currentOrbitIndex + 1) % orbitCycle.length];
  }, 3000);
})();
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Anteprima",
          style: context.text.titleMedium?.copyWith(fontSize: 16.sp),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18.sp,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 35.h),
          child: ModelViewer(
            interpolationDecay: 200,
            backgroundColor: Colors.white,
            src: 'assets/models/MonteCacume.glb',
            alt: 'A 3D model of an Monte Cacume',
            ar: true,
            arScale: ArScale.auto,
            arModes: const ['scene-viewer'],
            autoRotate: true,
            iosSrc: 'assets/models/MonteCacume.glb',
            //     'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
            disableZoom: false,
            relatedJs: js,
          ),
        ),
      ),
    );
  }
}
