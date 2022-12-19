import 'package:flutter/material.dart';
import 'package:whatsapp_model/screens/search.dart';

class sw extends StatefulWidget {
  const sw({Key? key}) : super(key: key);

  @override
  State<sw> createState() => _swState();
}

class _swState extends State<sw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search bar"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SBW());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class SBW extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [Container()];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return (IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: Text("suggestions"),
    );
  }
}
