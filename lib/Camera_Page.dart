// import 'dart:io';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';

// class CameraPage extends StatefulWidget {
//   const CameraPage({Key? key}) : super(key: key);

//   @override
//   State<CameraPage> createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   late CameraController controller;

//   Future<void> initializeCamera() async {
//     var cameras = await availableCameras();
//     controller = CameraController(cameras[0], ResolutionPreset.medium);
//     await controller.initialize();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   Future<File?> takePicture() async {
//     Directory root = await getTemporaryDirectory();
//     String directoryPath = '${root.path}/Giuded_Camera';
//     await Directory(directoryPath).create(recursive: true);
//     String filePath = '$directoryPath/${DateTime.now()}.jpg';

//     try {
//       controller.takePicture(filePath);
//     } catch (e) {
//       return null;
//     }

//     return File(filePath);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: initializeCamera(),
//           builder: (_, snapshoot) =>
//               (snapshoot.connectionState == ConnectionState.done)
//                   ? Container()
//                   : const Center(
//                       child: SizedBox(
//                         height: 20,
//                         width: 20,
//                         child: CircularProgressIndicator(),
//                       ),
//                     )),
//     );
//   }
// }
