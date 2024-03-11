import 'package:ciociariadavisitare/src/custom_widgets/custom_app_bar.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelViewerPage extends StatefulWidget {
  const ModelViewerPage({super.key});

  @override
  State<ModelViewerPage> createState() => _ModelViewerPageState();
}

class _ModelViewerPageState extends State<ModelViewerPage> {
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
            src: 'assets/models/anagni_cathedral2.glb',
            alt: 'A 3D model of an anagni cathedral',
            ar: true,
            arModes: const ['scene-viewer', 'webxr', 'quick-look'],
            autoRotate: true,
            iosSrc: 'assets/models/anagni_cathedral2.glb',
            //     'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
            disableZoom: false,
            relatedJs: js,
          ),
        ),
      ),
    );
  }
}
