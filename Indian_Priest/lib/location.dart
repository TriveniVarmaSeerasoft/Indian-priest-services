// ignore_for_file: camel_case_types, prefer_const_declarations
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class locationservices {
  final String key = 'AIzaSyCmFD-2hE9uqIYiLzqOIf61Jl1PWnMb3so';
  Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var placeId = json['candidates'][0]['place_id'] as String;
    print(placeId);
    return placeId;
  }

  Future<Map<String, dynamic>> getplace(String input) async {
    final placeid = await getPlaceId(input);
    final String url =
        'https://mape.googleapis.com/maps/api/place/details/json?place_id=$placeid&key=$key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var results = json['result'] as Map<String, dynamic>;
    print(results);
    return results;
  }
}
