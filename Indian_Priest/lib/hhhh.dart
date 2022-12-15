// import 'package:flutter/material.dart';
// import 'dart:convert';

// import 'package:flutter/services.dart';

// void main() {
//   runApp(const hhhh());
// }

// class hhhh extends StatelessWidget {
//   const hhhh({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // Hide the debug banner
//       debugShowCheckedModeBanner: false,
//       title: 'Kindacode.com',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List _items = [];

// // Fetch content from the json file
//   Future<void> readJson() async {
//     final String response =
//         await rootBundle.loadString('jsonfile/templeList.json');
//     final data = await json.decode(response);
//     setState(() {
//       _items = data["items"];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Kindacode.com',
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(25),
//         child: Column(
//           children: [
//             ElevatedButton(
//               child: const Text('Load Data'),
//               onPressed: readJson,
//             ),

//             // Display the data loaded from sample.json
//             _items.isNotEmpty
//                 ? Expanded(
//                     child: ListView.builder(
//                       itemCount: _items.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           margin: const EdgeInsets.all(10),
//                           child: ListTile(
//                             leading: Text(_items[index]["TempleId"]),
//                             title: Text(_items[index]["templeName"]),
//                             subtitle: Text(_items[index]["address"]),
//                           ),
//                         );
//                       },
//                     ),
//                   )
//                 : Container()
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class hhhh extends StatefulWidget {
  const hhhh({Key? key}) : super(key: key);

  @override
  State<hhhh> createState() => _hhhhState();
}

class _hhhhState extends State<hhhh> {
  bool isLoading = false;
  late List<String> autoCompleteData;

  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });

    final String stringData =
        await rootBundle.loadString('jsonfile/priestfile.json');

    final List<dynamic> json = jsonDecode(stringData);
    final List<String> jsonStringData = json.cast<String>();

    setState(() {
      isLoading = false;
      autoCompleteData = jsonStringData;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAutoCompleteData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Autocomplete(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  } else {
                    return autoCompleteData.where((word) => word
                        .toLowerCase()
                        .contains(textEditingValue.text.toLowerCase()));
                  }
                })
              ]),
            ),
    );
  }
}
