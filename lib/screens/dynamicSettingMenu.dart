import 'package:flutter/material.dart';

class dms extends StatefulWidget {
  const dms({Key? key}) : super(key: key);

  @override
  State<dms> createState() => _dmsState();
}

class _dmsState extends State<dms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drop down menu"),
        actions: [
          PopupMenuButton<menuItem>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text("share"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text("share"),
                    ],
                  ),
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}

class menuItem {
  final String text;
  final IconData iconsSend;
  const menuItem({
    required this.text,
    required this.iconsSend,
  });
}

class menuItems {
  static const List<menuItem> firstItems = [
    ItemSetting,
    ItemShare,
  ];
  static const List<menuItem> secondItems = [
    Sout,
  ];
  static const ItemSetting = menuItem(
    text: 'setting',
    iconsSend: Icons.settings,
  );
  static const ItemShare = menuItem(
    text: 'Share',
    iconsSend: Icons.share,
  );
  static const Sout = menuItem(
    text: 'sign out',
    iconsSend: Icons.logout,
  );
}
