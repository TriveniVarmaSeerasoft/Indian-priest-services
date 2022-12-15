// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:http/http.dart' as http;
import 'package:indian_priest/screen20.dart';

class typeahead extends StatefulWidget {
  const typeahead({Key? key}) : super(key: key);

  @override
  State<typeahead> createState() => _typeaheadState();
}

class _typeaheadState extends State<typeahead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.all(16),
          child: TypeAheadField<User?>(
            suggestionsCallback: UserApi.getUserSuggestions,
            itemBuilder: (context, User? suggestion) {
              final user = suggestion!;

              return ListTile(
                title: Text(user.address),
              );
            },
            onSuggestionSelected: (User? suggestion) {},
          ),
        )));
  }
}

class User {
  String address;
  User({
    required this.address,
  });
  static User fromJson(Map<String, dynamic> json) => User(
        address: json['address'],
      );
}

class UserApi {
  static Future<List<User>> getUserSuggestions(String query) async {
    final url = Uri.parse('jsonfile/templeList.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List users = json.decode(response.body);

      return users.map((json) => User.fromJson(json)).where((user) {
        final addressLower = user.address.toLowerCase();
        final queryLower = query.toLowerCase();

        return addressLower.contains(queryLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
