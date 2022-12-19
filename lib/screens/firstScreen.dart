import 'package:flutter/material.dart';
import 'package:whatsapp_model/screens/camera.dart';
import 'package:whatsapp_model/screens/dynamicSettingMenu.dart';
import 'package:whatsapp_model/screens/home.dart';
import 'package:whatsapp_model/screens/pt.dart';
import 'package:whatsapp_model/screens/search.dart';
// import 'package:whatsapp_model/screens/search.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: CustomSearchDelegate());
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('It is search button in appbar'),
            //     backgroundColor: Colors.blue,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.vertical(
            //         top: Radius.circular(20),
            //       ),
            //     ),
            //   ),
            // );
          },
        ),
        title: Text('WhatsApp Model'),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  content: Text(
                    "its sunny sign in app bar",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
            icon: Icon(Icons.sunny),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    content: Text("its wifi"),
                  );
                },
              );
            },
            icon: Icon(Icons.wifi),
          ),
          // IconButton(
          //   onPressed: () {
          //     showDialog(
          //         context: context,
          //         builder: (context) {
          //           return AlertDialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(30)),
          //             title: Text('DropDown'),
          //             content: Text(''),
          //           );
          //         });
          //   },
          //   icon: Icon(Icons.more_vert),
          // ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.black,
          tabs: [
            Tab(
              // height: 5,
              icon: Icon(
                Icons.camera_alt,
                // size: 18,
              ),
            ),
            Tab(
              text: 'home',
            ),
            Tab(
              text: 'search',
            ),
            Tab(
              text: 'status',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          // Container(),
          cameraScreen(),
          Container(
            child: Container(
              child: homee(),
              // child: Center(
              //   child: Text("Welcome to My WhatsApp"),
              // ),
              // color: Colors.blue,
              // child: Scaffold(
              //   floatingActionButton: FloatingActionButton(
              //     onPressed: () {},
              //     child: Icon(Icons.add),
              //   ),
              // ),
            ),
          ),
          Container(
            child: SB(),
          ),
          Container(),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
