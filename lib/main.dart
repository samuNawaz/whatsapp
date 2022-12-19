import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_model/screens/SW.dart';
import 'package:whatsapp_model/screens/camera.dart';
import 'package:whatsapp_model/screens/dynamicSettingMenu.dart';
import 'package:whatsapp_model/screens/firstScreen.dart';
import 'package:whatsapp_model/screens/practice_search.dart';
import 'package:whatsapp_model/screens/pt.dart';
import 'package:whatsapp_model/screens/search.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
