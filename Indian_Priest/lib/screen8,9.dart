// ignore_for_file: prefer_const_constructors, dead_code, sort_child_properties_last, deprecated_member_use, non_constant_identifier_names, unused_local_variable

import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indian_priest/screen10.dart';
import 'package:indian_priest/screen10new.dart';
import 'package:flutter/src/material/range_slider.dart';

class User {
  final String username;
  final String address;
  final String AssetImage;
  const User({
    required this.username,
    required this.address,
    required this.AssetImage,
  });
}

class screen89 extends StatefulWidget {
  const screen89({Key? key}) : super(key: key);

  @override
  State<screen89> createState() => _screen89State();
}

class _screen89State extends State<screen89> {
  List username = [
    'Tarachand Joshi',
    'Krishna Murthy',
    'Sundar Natarajan',
    'Ramana Murthy',
    'Purushothamacharya'
  ];
  // List address = [
  //   '5547 W North Ave, Chicago',
  //   '565 W North Ave, Chicago',
  //   'W North Ave, Chicago',
  //   '5547 W North Ave, Chicago',
  //   '5547 W North Ave, Chicago'
  // ];
  // List image = [
  //   'images/image 4 (1).png',
  //   'images/image 4 (3).png',
  //   'images/image 4 (4).png',
  //   'images/image 4 (5).png',
  //   'images/image 4 (6).png'
  // ];
  // List rating = ['4', '4.2', '4', '3.5', '4.4'];

  RangeValues values = RangeValues(0.1, 0.5);
  List<String> type = [];

  int? selectedvalue;

  @override
  Widget build(BuildContext context) {
    bool selectedOption = true;
    final isSelected = selectedOption == type;
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Chicago',
            ),
            centerTitle: true,
            leading: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 5, 8),
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    iconSize: 25.0,
                  ),
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  // ignore: sort_child_properties_last
                  child: IconButton(
                    onPressed: () {},
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.message_outlined,
                      color: Colors.black,
                    ),
                    // iconSize: 25.0,
                  ),
                ),
              ),

              // ignore: sort_child_properties_last
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
                child: Container(
                  width: 38,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  // ignore: sort_child_properties_last
                  child: IconButton(
                    onPressed: () {},
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    iconSize: 25.0,
                  ),
                ),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(

                  // ignore: prefer_const_literals_to_create_immutables
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 255, 130, 34),
                Color.fromARGB(255, 248, 213, 35)
              ], begin: Alignment.bottomRight, end: Alignment.topRight)),
            ),
          ),
          // ............................................................
          body: SingleChildScrollView(
            child: Stack(children: [
              Container(
                width: double.infinity,
                // height: double.infinity,
                child: Image(
                  image: AssetImage(
                    'images/Rectangle 21.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.location_pin,
                            color: Color.fromARGB(255, 12, 151, 17)),
                        Text(
                          'Nearby you',
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 151, 17),
                              fontSize: 18),
                        ),
                        SizedBox(width: 160),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                // isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return SingleChildScrollView(
                                    child: Container(
                                      height: 500,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Filter',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Color.fromARGB(
                                                          255, 19, 139, 23)),
                                                ),
                                                SizedBox(
                                                  width: 150,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                        side: BorderSide(
                                                            color: Colors
                                                                .deepOrange)),
                                                    onPressed: () {
                                                      // Navigator.push(
                                                      //   context,
                                                      //   MaterialPageRoute(
                                                      //       builder: (context) =>
                                                      //           const screen10()),
                                                      // );
                                                    },
                                                    child: Row(
                                                      // ignore: prefer_const_literals_to_create_immutables
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .forward_5_outlined,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          'Reset',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    color: Colors.deepOrange,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Type',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: FlatButton(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              side: BorderSide(
                                                                  color: Colors
                                                                      .grey)),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'North India',
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                FlatButton(
                                                  color: Color.fromARGB(
                                                      255, 248, 228, 227),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      side: BorderSide(
                                                          color: Colors.red)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    'South India',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Sort by',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                FlatButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .grey)),
                                                    onPressed: () {},
                                                    child: Text('Best Match',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey))),
                                                SizedBox(width: 5),
                                                FlatButton(
                                                    color: Color.fromARGB(
                                                        255, 248, 228, 227),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .red)),
                                                    onPressed: () {},
                                                    child: Text('Nearest',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.red))),
                                                SizedBox(width: 5),
                                                FlatButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .grey)),
                                                    onPressed: () {},
                                                    child: Text('Low budget',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey))),
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Distance',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Text(
                                                  '8 miles',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Text(
                                                  '20 miles',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                )
                                              ],
                                            ),
                                            StatefulBuilder(
                                                builder: ((context, state) {
                                              return RangeSlider(
                                                values: values,
                                                divisions: 8,
                                                labels: labels,
                                                activeColor: Colors.grey,
                                                onChanged: (newValues) {
                                                  state(() {});
                                                  setState(() {
                                                    values = newValues;
                                                  });
                                                },
                                              );
                                            })),
                                            Text(
                                              'Budget',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Text(
                                                  '\$${92}',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Text(
                                                  '\$${300}',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                )
                                              ],
                                            ),
                                            StatefulBuilder(
                                                builder: ((context, state) {
                                              return RangeSlider(
                                                values: values,
                                                divisions: 8,
                                                labels: labels,
                                                activeColor: Colors.grey,
                                                onChanged: (newValues) {
                                                  state(() {});
                                                  setState(() {
                                                    values = newValues;
                                                  });
                                                },
                                              );
                                            })),
                                            // SizedBox(height: 10),
                                            Text(
                                              'Ratings',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                FlatButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .grey)),
                                                    onPressed: () {},
                                                    child: Text('below 4',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey))),
                                                SizedBox(width: 10),
                                                FlatButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .grey)),
                                                    onPressed: () {},
                                                    child: Text('4 to 6',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey))),
                                                SizedBox(width: 10),
                                                FlatButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .grey)),
                                                    onPressed: () {},
                                                    child: Text('6 to 10',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey))),
                                              ],
                                            ),
                                            // SizedBox(height: 10),
                                            MaterialButton(
                                              onPressed: () {
                                                //  Navigator.push(context,
                                                //       MaterialPageRoute(builder: (context) => screen2()));
                                              },
                                              color: Colors.deepOrange,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15,
                                                        horizontal: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    Text('Apply',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          icon: Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString("jsonfile/priestfile.json"),
                      builder: (context, data) {
                        var showData = json.decode(data.data.toString());
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: username.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, index) {
                                var users;

                                return GestureDetector(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const screen10new(),
                                    //     ),
                                    //   );
                                    //   setState(() {
                                    //     selectedvalue = index;
                                    //   });
                                    // },
                                    child: Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 244, 242, 242),
                                            spreadRadius: 8)
                                      ]),
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          radius: 30,
                                          // child: Image(
                                          //   image: AssetImage(
                                          //       showData[index]['image']
                                          //           .toString()),
                                          //   fit: BoxFit.fill,
                                          // ),
                                          backgroundImage: AssetImage(
                                              showData[index]['image']
                                                  .toString()),
                                        ),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start, // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  Text(
                                                    showData[index]['name'],
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    showData[index]['address'],
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    // ignore: prefer_const_literals_to_create_immutables
                                                    children: [
                                                      Container(
                                                        width: 50,
                                                        height: 25,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color:
                                                                Color.fromARGB(
                                                                    39,
                                                                    249,
                                                                    157,
                                                                    198)),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Telugu',
                                                            style: TextStyle(
                                                              color: Colors.red,
                                                              // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        width: 50,
                                                        height: 25,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color:
                                                                Color.fromARGB(
                                                                    39,
                                                                    249,
                                                                    157,
                                                                    198)),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Tamil',
                                                            style: TextStyle(
                                                              color: Colors.red,
                                                              // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // SizedBox(width: 40),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: BorderSide(
                                                        color:
                                                            Colors.deepOrange)),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const screen10new(),
                                                        settings: RouteSettings(
                                                          arguments:
                                                              showData[index]
                                                                  ['name'],
                                                        ),
                                                      ));
                                                },
                                                child: Text(
                                                  // username[index].length,
                                                  'Select',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                color: Colors.deepOrange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Icon(Icons.message_outlined,
                                              color: Colors.orange),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            showData[index]['message']
                                                .toString(),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(Icons.star,
                                              color: Colors.orange),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            showData[index]['rating']
                                                .toString(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ));
                              }),
                        );
                      }),
                ],
              ),
            ]),
          ),
          backgroundColor: Color.fromARGB(255, 255, 130, 34),
        ));
  }

  // backgroundColor: Color.fromARGB(255, 255, 130, 34),

}

// class UserPage extends StatefulWidget {
//   final User users;
//   const UserPage({Key? key, required this.users}) : super(key: key);

//   @override
//   State<UserPage> createState() => _UserPageState();
// }

// class _UserPageState extends State<UserPage> {
//   @override
//   Widget build(BuildContext context) {
//     //  var users;
//     var users;
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(users.username),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               Image.network(
//                 users.urlAvatar,
//                 height: 40,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(height: 15),
//               Text(
//                 users.username,
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
