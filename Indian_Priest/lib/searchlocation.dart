import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

class searchlocation extends StatefulWidget {
  const searchlocation({Key? key}) : super(key: key);

  @override
  State<searchlocation> createState() => _searchlocationState();
}

class _searchlocationState extends State<searchlocation> {
  String locationMessage = 'Current Location of the user';
  late String lat;
  late String lng;

  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location services are disabled');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location services are permanently denied,we cannot access permissions');
    }
    return await Geolocator.getCurrentPosition();
  }

// listen to location updates
  void _liveLocation() {
    LocationSettings locationSettings = const LocationSettings(
      // accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position position) {
      lat = position.latitude.toString();
      lng = position.longitude.toString();

      setState(() {
        locationMessage = 'Latitude: $lat,Longitude:$lng';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      onTap: () {
                        getCurrentLocation().then((value) {
                          lat = '${value.latitude}';
                          lng = '${value.longitude}';
                          setState(() {
                            locationMessage = 'Latitude: $lat, Longitude:$lng';
                          });
                          _liveLocation();
                        });
                      },
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(15),
                            child: Icon(Icons.search),
                            // child: Image.asset('assets/icons/search.png'),
                            width: 18,
                          )),
                    ),
                  ),
                  // Container(
                  //     margin: EdgeInsets.only(left: 10),
                  //     padding: EdgeInsets.all(15),
                  //     decoration: BoxDecoration(
                  //         color: Theme.of(context).primaryColor,
                  //         borderRadius: BorderRadius.circular(15)),
                  //     child: Image.asset('assets/icons/filter.png'),
                  //     width: 25),
                ],
              )
            ],
          ),
        ));
  }
}
