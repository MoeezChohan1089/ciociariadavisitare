import 'dart:async';
import 'dart:io';

import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:ciociariadavisitare/src/custom_widgets/custom_app_bar.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class CastelloModelViewerPage extends StatefulWidget {
  const CastelloModelViewerPage({super.key});

  @override
  State<CastelloModelViewerPage> createState() =>
      _CastelloModelViewerPageState();
}

class _CastelloModelViewerPageState extends State<CastelloModelViewerPage> {
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

  late ARKitController arkitController;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    arkitController.dispose();
    super.dispose();
  }

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
      body: Platform.isAndroid
          ? Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 35.h),
                child: ModelViewer(
                  interpolationDecay: 200,
                  backgroundColor: Colors.white,
                  src: 'assets/models/Castello.glb',
                  alt: 'A 3D model of an castello',
                  ar: true,
                  arScale: ArScale.auto,
                  arModes: const ['scene-viewer'],
                  autoRotate: true,
                  // iosSrc: 'assets/models/anagni_cathedral2.glb',
                  //     'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
                  disableZoom: false,
                  relatedJs: js,
                ),
              ),
            )
          : ARKitSceneView(
              showFeaturePoints: true,
              enableTapRecognizer: true,
              planeDetection: ARPlaneDetection.horizontalAndVertical,
              onARKitViewCreated: onARKitViewCreated,
            ),
    );
  }

  void onARKitViewCreated(ARKitController arkitController) {
    this.arkitController = arkitController;
    final node = _getNodeFromFlutterAsset(0.8);
    this.arkitController.add(node);
  }

  ARKitGltfNode _getNodeFromFlutterAsset(double scale) {
    // Define the desired width and height
    double desiredWidth = 1.0; // Set your desired width in meters
    double desiredHeight = 1.0; // Set your desired height in meters

    // Load the 3D model
    ARKitGltfNode modelNode = ARKitGltfNode(
      assetType: AssetType.flutterAsset,

      url:
          'assets/models/Castello.glb', // Change the file name to your glb file
      position: vector.Vector3(0, -1, -45),
      scale: vector.Vector3.zero(),
      eulerAngles: vector.Vector3.zero(),
    );

    // Calculate the scale factor to achieve the desired width and height
    double scaleFactorX = desiredWidth / modelNode.scale.x;
    double scaleFactorY = desiredHeight / modelNode.scale.y;

    // Set the scale factor for both the X and Y axes to maintain aspect ratio
    modelNode.scale = vector.Vector3(scale, scale, scale);
    // timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
    //   final rotation = modelNode.eulerAngles;
    //   rotation.x += 0.01;
    //   modelNode.eulerAngles = rotation;
    // });
    return modelNode;
  }
}
