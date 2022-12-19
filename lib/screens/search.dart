import 'package:flutter/material.dart';
// import 'package:whatsapp_model/screens/firstScreen.dart';

class SB extends StatefulWidget {
  const SB({Key? key}) : super(key: key);

  @override
  State<SB> createState() => _SBState();
}

class _SBState extends State<SB> {
  get aligemant => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("search"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         showSearch(context: context, delegate: PcSEARCH());
      //       },
      //       icon: Icon(Icons.search),
      //     )
      //   ],
      // ),
      body: Container(
          child: Center(
        child: Text(
          "Welcome to Usman Project",
        ),
      )),
    );
  }
}

class PcSEARCH extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            showResults(context);
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Navigator.pop(context);
        // showResults(context);
        close(context, '');
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Text('hello'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.person),
        ),
        ListTile(
          leading: Icon(Icons.person),
        )
      ],
    );
  }
}
