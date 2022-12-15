// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(40.441010, -79.805163);

class screen6 extends StatefulWidget {
  const screen6({Key? key}) : super(key: key);

  @override
  State<screen6> createState() => _screen6State();
}

class _screen6State extends State<screen6> {
  Completer<GoogleMapController> googleMapController = Completer();
  late GoogleMapController newGoogleMapController;

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  var locationMessage = '';
  late Position currentPosition;
  var geoLocator = Geolocator();
  double bottomPaddingOfMap = 0;

  void locatePosition() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition =
        new CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  static final CameraPosition _initialCameraPosition =
      CameraPosition(target: LatLng(40.441010, -79.805163), zoom: 14);
  // Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: Stack(children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
            initialCameraPosition: _initialCameraPosition,
            // markers: markers,
            myLocationButtonEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
              newGoogleMapController = controller;
              setState(() {
                bottomPaddingOfMap = 300.0;
              });
              locatePosition();
            },
          ),
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('To the lake!'),
          icon: Icon(Icons.directions_boat),
        ));
  }
}
