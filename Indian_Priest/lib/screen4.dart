// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, unused_label

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:indian_priest/screen5.dart';

class screen4 extends StatefulWidget {
  const screen4({Key? key}) : super(key: key);

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  // var lastPosition = await Geolocator.getLastKnownPosition();
  // print(lastPosition);
  // var lat = position.latitude;
  // var long = position.longitude;
  // print(('$lat,$long'));

  // setState(() {
  //   locationMessage = 'latitude :$lat , longitude : $long';
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AlertDialog(
        backgroundColor: Color.fromARGB(255, 229, 228, 228),
        title: Text(
            "Allow 'Priest Services' Would like to Use Your Current Location",
            style: TextStyle(color: Colors.black, fontSize: 15),
            textAlign: TextAlign.center),
        actions: <Widget>[
          Row(
            children: [
              Flexible(
                // ignore: deprecated_member_use
                child: MaterialButton(
                  onPressed: () async {},
                  color: Colors.deepOrange,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Don't Allow",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                // ignore: deprecated_member_use
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => screen5(),
                      ),
                    );
                  },
                  color: Colors.deepOrange,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("OK", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ignore: deprecated_member_use
          // MaterialButton(
          //   child: Text("Don't Allow"),
          //   highlightColor: Colors.deepOrange,
          //   textColor: Colors.white,
          //   padding: EdgeInsets.symmetric(),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => screen4(),
          //       ),
          //     );
          //   },
          // ),
          // // ignore: deprecated_member_use
          // RaisedButton(
          //   child: Text("OK"),
          //   highlightColor: Colors.deepOrange,
          //   textColor: Colors.white,
          //   padding: EdgeInsets.symmetric(),
          //   onPressed: () {
          //     getCurrentLocation();
          //   },
          // ),
        ],
      ),
      // Row(
      //   children: [
      //     Icon(Icons.location_on, size: 45.0, color: Colors.red),

      //     Text(locationMessage),
      //     SizedBox(height: 5),
      //     // ignore: deprecated_member_use
      //     TextButton(
      //       child: Text(
      //         'Pick location from google',
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //       onPressed: () {
      //         getCurrentLocation();
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
