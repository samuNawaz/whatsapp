import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_model/main.dart';

List<CameraDescription>? cameras;

class cameraScreen extends StatefulWidget {
  const cameraScreen({super.key});

  @override
  State<cameraScreen> createState() => _cameraScreenState();
}

class _cameraScreenState extends State<cameraScreen> {
  late CameraController cameraController;
  late Future<void> cameraValue;
  @override
  void initState() {
    // TODO: implement initState

    cameraController = CameraController(cameras![0], ResolutionPreset.high);
    cameraValue = cameraController.initialize();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.pink,
        width: w,
        height: h,
        child: Stack(
          children: [
            Container(
              height: h,
              width: w,
              child: FutureBuilder(
                future: cameraValue,
                builder: (context, snapshor) {
                  if (snapshor.connectionState == ConnectionState.done) {
                    return CameraPreview(cameraController);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                child: Text(
                  'hello',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                height: 50,
                width: w,
                decoration: BoxDecoration(color: Color.fromARGB(255, 2, 2, 2)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
