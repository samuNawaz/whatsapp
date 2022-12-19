import 'package:flutter/material.dart';

class pt extends StatefulWidget {
  const pt({Key? key}) : super(key: key);

  @override
  State<pt> createState() => _ptState();
}

class _ptState extends State<pt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: Sc());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

final List<String> searchmaterial = [
  "usman",
  "Ali",
  "hasan",
  'Alex',
  'James',
  'Blake',
  'Kyle',
  'Drew',
  'ylorlnnedy',
  'Jordan'
];
final List<String> hint = [
  'Alex',
  'James',
  'Blake',
  'Kyle',
];

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
class Sc extends SearchDelegate{
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

  @override
  Widget? buildLeading(BuildContext context) {
 
  return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }
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

  @override
  Widget buildSuggestions(BuildContext context) {
    // final content = query.isEmpty
    //     ? hint
    //     : searchmaterial.where((name) => name.contains(query)).toList();
    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text("${content[index]}"),
    //     );
    //   },
    //   itemCount: content.length,
    // );
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
