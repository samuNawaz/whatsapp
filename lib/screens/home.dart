import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homee extends StatefulWidget {
  const homee({Key? key}) : super(key: key);

  @override
  State<homee> createState() => _homeeState();
}

class _homeeState extends State<homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 206, 66),
      floatingActionButton: SpeedDial(
        overlayColor: Colors.white,
        overlayOpacity: .5,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            label: 'mail',
          ),
          SpeedDialChild(
            child: Icon(Icons.copy),
            label: 'copy',
          ),
          SpeedDialChild(
            // child: Icon(Icons.facebook),
            child: FaIcon(
              FontAwesomeIcons.android,
            ),
            label: 'android',
          ),
          SpeedDialChild(
            // child: Icon(Icons.,
            // child: Icon(),
            child: Icon(FontAwesomeIcons.facebook),
            label: 'copy',
          ),
          SpeedDialChild(child: FaIcon(FontAwesomeIcons.twitter)),
        ],
      ),
      body: Container(child: Text('hello')),
    );
  }
}
