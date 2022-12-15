// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(40.441010, -79.805163);

class screen5 extends StatefulWidget {
  const screen5({Key? key}) : super(key: key);

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  late GoogleMapController _mapController;
  Map<String, Marker> _markers = {};
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: currentLocation,
            zoom: 14,
          ),
          onMapCreated: (controller) {
            _mapController = controller;
            addMarker('test', currentLocation);
          },
          markers: _markers.values.toSet(),
        ),
      ]),
    );
  }

  void addMarker(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: const InfoWindow(
          title: 'Sri venkateshwara temple',
          snippet: 'some description of the place',
        ));
    _markers[id] = marker;
    setState(() {});
  }
}
  // searchfield() {
  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
  //     child: TextField(
  //       controller: searchcontroller,
  //       textCapitalization: TextCapitalization.sentences,
  //       cursorColor: Colors.black,
  //       cursorHeight: 20,
  //       decoration: InputDecoration(
  //           filled: true,
  //           fillColor: Colors.white,
  //           hintText: 'Search',
  //           prefixIcon: IconButton(
  //             icon: Icon(
  //               Icons.search_rounded,
  //               color: Colors.orange,
  //             ),
  //             onPressed: () {
  //               locationservices().getPlaceId(searchcontroller.text);
  //             },
  //           ),
  //           border: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //               borderSide: BorderSide.none)),
  //       onChanged: (value) {
  //         print(value);
  //       },
  //     ),
  //   );
  // }

