// ignore_for_file: unused_local_variable, prefer_const_constructors, sort_child_properties_last
import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:indian_priest/screen21.dart';
import 'package:indian_priest/screen8,9.dart';
import 'location.dart';
import 'map_utils.dart';
// import 'screen21.dart';
import 'screen3.dart';
// import 'screen9_10.dart';
import 'package:google_api_headers/google_api_headers.dart';

class screen6_7_8 extends StatefulWidget {
  @override
  State<screen6_7_8> createState() => _screen6_7_8State();
}

enum switchwidget { temple, priest }

enum switchsearch { temple, priest }

const _kGoogleApiKey = 'AIzaSyCmFD-2hE9uqIYiLzqOIf61Jl1PWnMb3so';

final homeScaffoldKey = GlobalKey<ScaffoldState>();

class _screen6_7_8State extends State<screen6_7_8> {
  LatLng currentLocation = const LatLng(25.1193, 55.3773);
  LatLng anotherLocation = const LatLng(25.1058, 55.3773);
  Map<String, Marker> _markers = {};
  Set<Marker> marker = Set<Marker>();

  final Mode _mode = Mode.overlay;
  static const CameraPosition initialcameraposition =
      CameraPosition(target: LatLng(41.40338, 2.17403), zoom: 14.0);

  Timer? debounce;
  late GoogleMapController mapController;
  TextEditingController searchcontroller = TextEditingController();
  static final Polyline _polyline = Polyline(
    polylineId: PolylineId('_polyline'),
    // ignore: prefer_const_literals_to_create_immutables
    points: [
      LatLng(25.1193, 55.3773),
      LatLng(25.1058, 55.3773),
    ],
    width: 5,
  );
  static final Polygon _polygon = Polygon(
    polygonId: PolygonId('_polygon'),
    // ignore: prefer_const_literals_to_create_immutables
    points: [
      LatLng(25.1193, 55.3773),
      LatLng(25.1058, 55.3773),
    ],
  );
  switchwidget selectwidget = switchwidget.temple;
  switchsearch selectfilter = switchsearch.temple;
  bool col = false;
  bool col2 = false;
  @override
  void dispose() {
    // TODO: implement dispose
    selectservice();
    super.dispose();
  }

  List<bool> _selection = [true, false];
  List<bool> selection = [false, false];
  RangeValues values = RangeValues(1, 1000);
  RangeLabels labels = RangeLabels('1', '1000');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      key: homeScaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
          child: Container(
            width: 40,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => screen21()));
              },
              color: Colors.white,
            ),
          ),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 18, 20, 0),
            child: Container(
              width: 38,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // ignore: sort_child_properties_last
              child: IconButton(
                onPressed: () {
                  buildSheet(context);
                },
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition: initialcameraposition,
          markers: marker, mapType: MapType.normal,
          //  target: currentLocation,
          // zoom: 18,
          onMapCreated: ((controller) {
            mapController = controller;
            // addMarker('test', currentLocation);
            // addMarker('rest', anotherLocation);
          }),
        ),
        // mapType: MapType.satellite,
        // markers: marker,

        // markers: _markers.values.toSet(),
        // polylines: {_polyline},
        //polygons: {_polygon},

        searchfield(),
        Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(child: selectservice()),
            ),
          ),
        ),
      ]),
    ));
  }

  addMarker(String id, LatLng location) async {
    // var markerIcon = await BitmapDescriptor.fromAssetImage(
    //   const ImageConfiguration(),
    //   'images/Icon.png',
    // );
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: InfoWindow(
          title: 'title of place1', snippet: 'some description of the place'),
      icon: await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(
            // size: Size(48, 48)
            ),
        'priest-services/images/Icon.png',
      ),
    );
    _markers[id] = marker;
    setState(() {});
  }

  searchfield() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
      child: Container(
        child: Column(
          children: [
            TextField(
              controller: searchcontroller,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: Colors.black,
              cursorHeight: 20,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Colors.orange,
                    ),
                    onPressed: () {
                      locationservices().getPlaceId(searchcontroller.text);
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
              onChanged: (value) {
                if (debounce?.isActive ?? false) debounce?.cancel();
                debounce = Timer(Duration(milliseconds: 700), () async {});
                if (value.length > 2) print(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget selectservice() {
    switch (selectwidget) {
      case switchwidget.temple:
        return scrolltemples();
      case switchwidget.priest:
        return scrollpriests();
    }
  }

  Widget scrollpriests() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        bookpriestservice(),
        SizedBox(
          width: 8,
        ),
        bookpriestservice()
      ],
    );
  }

  Widget scrolltemples() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        booktempleservice(),
        SizedBox(
          width: 8,
        ),
        booktempleservice()
      ],
    );
  }

  Widget booktempleservice() => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        width: 340,
        height: 220,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    //border: Border(bottom: BorderSide(width: 1)),
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
                child: Row(children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        height: 90,
                        width: 90,
                        child: Image.asset(
                          'images/AF1QipMmsNbMUKXCKCoyfbdvRgSzreEsjLyP_BdODWi-=w408-h334-k-no.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Sri Venkateswara Temple',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '1230 S McCully Dr, Pittsburgh, PA',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '15235, United States',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '+14123733380',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'www.svtemple.org',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 99, 2),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Flexible(
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectwidget = switchwidget.priest;
                        });
                      },
                      color: Color.fromARGB(255, 255, 99, 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Book Service',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        MapUtils.openMap(40.441010, -79.805163);
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => screen9_10()));
                      },
                      color: Color.fromARGB(255, 255, 183, 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Directions',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget bookpriestservice() => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        width: 340,
        height: 280,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    //border: Border(bottom: BorderSide(width: 1)),
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
                child: Row(children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        height: 90,
                        width: 90,
                        child: SvgPicture.asset(
                          'images/5rqe8q4t 1.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Srinivasa Sarma',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '1230 S McCully Dr, Pittsburgh, PA',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '15235, United States',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(39, 255, 99, 2)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Telugu',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 253, 98, 42),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(39, 255, 99, 2)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Tamil',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 253, 98, 42),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ]),
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              Container(
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Griha Pravesh, Wedding, Naming, Baby Shower, Akshara Abhyasa, Annaprashana',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 99, 2),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => screen89()));
                        setState(() {
                          selectwidget = switchwidget.temple;
                        });
                      },
                      color: Color.fromARGB(255, 253, 98, 42),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Book Service',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  void buildSheet(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 30, 10),
                child: Container(
                  child: Column(
                    children: [
                      ToggleButtons(
                        renderBorder: false,
                        selectedColor: Colors.green,
                        fillColor: Colors.transparent,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 5,
                                        color: _selection[0]
                                            ? Colors.green
                                            : Colors.grey))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Center(
                                child: Text(
                                  'Search Temple',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 5,
                                        color: _selection[1]
                                            ? Colors.green
                                            : Colors.grey))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Center(
                                child: Text(
                                  'Search Priests',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          )
                        ],
                        isSelected: _selection,
                        onPressed: (int newindex) {
                          for (int index = 0;
                              index < _selection.length;
                              index++) {
                            if (index == newindex) {
                              setState(() {
                                _selection[index] = true;
                                if (_selection[0] == true) {
                                  selectfilter = switchsearch.temple;
                                } else {
                                  selectfilter = switchsearch.priest;
                                }
                              });
                            } else {
                              setState(() {
                                _selection[index] = false;
                              });
                            }
                          }
                        },
                      ),
                      _selectsearch()
                    ],
                  ),
                ),
              ),
            ));
  }

  Widget _selectsearch() {
    switch (selectfilter) {
      case switchsearch.temple:
        return searchtemples();
      case switchsearch.priest:
        return searchpriests();
    }
  }

  Widget searchtemples() {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Type',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 20,
              child: ToggleButtons(
                renderBorder: true,
                borderColor: Colors.grey,
                borderWidth: 2,
                borderRadius: BorderRadius.circular(5),
                selectedBorderColor: Color.fromARGB(255, 255, 99, 2),
                selectedColor: Color.fromARGB(255, 255, 99, 2),
                fillColor: Color.fromARGB(39, 255, 99, 2),
                disabledBorderColor: Color.fromARGB(38, 255, 253, 253),
                children: [
                  Container(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(
                          'North India',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(
                          'South India',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
                isSelected: selection,
                onPressed: (int newindex) {
                  for (int index = 0; index < selection.length; index++) {
                    if (index == newindex) {
                      setState(() {
                        selection[index] = !selection[index];
                      });
                    }
                    // else {
                    //   _selection[index] = false;
                    // }
                  }
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Distance',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
            ),
          ),
          StatefulBuilder(
            builder: (BuildContext context, state) {
              return RangeSlider(
                  min: 1,
                  max: 1000,
                  divisions: 1000,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  labels: labels,
                  values: values,
                  onChanged: (value) {
                    print('start: ${value.start}, end: ${value.end}');
                    state(() {});
                    setState(() {
                      values = value;
                      labels = RangeLabels(value.start.toInt().toString(),
                          value.end.toInt().toString());
                    });
                  });
            },
          ),
          MaterialButton(
            onPressed: () {
              selectwidget = switchwidget.temple;
            },
            color: Color.fromARGB(255, 255, 99, 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Select Temple',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchpriests() {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Type',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 20,
              child: ToggleButtons(
                renderBorder: true,
                borderColor: Colors.grey,
                borderWidth: 2,
                borderRadius: BorderRadius.circular(5),
                selectedBorderColor: Color.fromARGB(255, 255, 99, 2),
                selectedColor: Color.fromARGB(255, 255, 99, 2),
                fillColor: Color.fromARGB(39, 255, 99, 2),
                disabledBorderColor: Color.fromARGB(38, 255, 253, 253),
                children: [
                  Container(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(
                          'North India',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(
                          'South India',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
                isSelected: selection,
                onPressed: (int newindex) {
                  for (int index = 0; index < selection.length; index++) {
                    if (index == newindex) {
                      setState(() {
                        selection[index] = !selection[index];
                      });
                    }
                    // else {
                    //   _selection[index] = false;
                    // }
                  }
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Distance',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
            ),
          ),
          StatefulBuilder(
            builder: (BuildContext context, state) {
              return RangeSlider(
                  min: 1,
                  max: 1000,
                  divisions: 1000,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  labels: labels,
                  values: values,
                  onChanged: (value) {
                    print('start: ${value.start}, end: ${value.end}');
                    state(() {});
                    setState(() {
                      values = value;
                      labels = RangeLabels(value.start.toInt().toString(),
                          value.end.toInt().toString());
                    });
                  });
            },
          ),
          MaterialButton(
            onPressed: () {
              selectwidget = switchwidget.priest;
            },
            color: Color.fromARGB(255, 255, 99, 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Select Priests',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: _kGoogleApiKey,
        onError: onError,
        mode: _mode,
        language: 'en',
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
            hintText: "search",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white))),
        components: [Component(Component.country, 'pk')]);

    displayPrediction(p, homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response) {
    homeScaffoldKey.currentState!
        .showSnackBar(SnackBar(content: Text(response.errorMessage!)));
  }

  Future<void> displayPrediction(Prediction? p, currentState) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(
      apiKey: _kGoogleApiKey,
      apiHeaders: await const GoogleApiHeaders().getHeaders(),
    );

    PlacesDetailsResponse detail =
        await places.getDetailsByPlaceId(p!.placeId!);

    final lat = detail.result.geometry!.location.lat;

    final lng = detail.result.geometry!.location.lng;

    marker.clear();
    marker.add(Marker(
        markerId: const MarkerId("0"),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(title: detail.result.name)));

    setState(() {
      mapController
          .animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14.0));
    });
  }
}
