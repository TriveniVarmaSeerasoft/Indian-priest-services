import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

String? stringResponse;
late Map mapResponse;
late Map dataResponse;
List? listResponse;

class apiintegrate extends StatefulWidget {
  const apiintegrate({Key? key}) : super(key: key);

  @override
  State<apiintegrate> createState() => _apiintegrateState();
}

class _apiintegrateState extends State<apiintegrate> {
  Future apicall() async {
    http.Response response;
    response =
        await http.get(Uri.parse('http://192.168.0.118:8080/static_data'));

    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        listResponse = json.decode(response.body);
        // listResponse = mapResponse['firstName'];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: listResponse == null
              ? Container(
                  child: Text('hi'),
                )
              : Text(listResponse![1]['languages'].toString()),
        ),
      ),
    );
  }
}
