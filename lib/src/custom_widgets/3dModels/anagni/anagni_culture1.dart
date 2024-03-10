import 'package:flutter/material.dart';
import 'package:maedrix_ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:maedrix_ar_flutter_plugin/datatypes/node_types.dart';
import 'package:maedrix_ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:maedrix_ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:maedrix_ar_flutter_plugin/models/ar_node.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ARViewExample extends StatefulWidget {
  @override
  _ARViewExampleState createState() => _ARViewExampleState();
}

class _ARViewExampleState extends State<ARViewExample> {
  ARSessionManager? _arSessionManager;
  ARObjectManager? _arObjectManager;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR View Example'),
      ),
      body: ARView(
        onARViewCreated: _onARViewCreated,
      ),
    );
  }

  void _onARViewCreated(arSessionManager, ARObjectManager, ARAnchorManager, ARLocationManager) {
    _arSessionManager = arSessionManager;

    _arSessionManager!.onInitialize(
      showFeaturePoints: true,
      showPlanes: true,
      customPlaneTexturePath: "assets/images/plane_texture.png",
      showWorldOrigin: true,
    );

    _loadSampleObject();
  }

  Future<void> _loadSampleObject() async {
    // Assuming you have a 3D model or a simple object you want to display
    // This could be a local asset or a remote asset
    // Make sure to adjust parameters (e.g., scale, position) based on your object
    var newNode = ARNode(
      type: NodeType.webGLB,
      uri: "assets/models/anagni_cathedral2.glb",
      scale: vector.Vector3.all(0.5),
      position: vector.Vector3(0, 0, -1),
      rotation: vector.Vector4(0, 0, 0, 1),
    );

    bool? didAddNode = await _arObjectManager!.addNode(newNode);
    if (didAddNode == true) {
      print("Successfully added the node to the AR scene");
    } else {
      print("Failed to add the node to the AR scene");
    }
  }

  @override
  void dispose() {
    _arSessionManager?.dispose();
    super.dispose();
  }
}
