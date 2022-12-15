// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:indian_priest/screen%2011,12&13.dart';
import 'package:indian_priest/screen8,9.dart';

class screen10new extends StatefulWidget {
  const screen10new({Key? key}) : super(key: key);

  @override
  State<screen10new> createState() => _screen10newState();
}

class _screen10newState extends State<screen10new> {
  List service = [
    'Satyanarayana swamy vratham',
    'Grihapravesha puja',
    'Ganapathi puja',
    'Namakaranam',
    'Lakshmi puja',
    'Sreemantham',
    'Ayusha Homam',
    'Punya vachanam',
    'Sudarshana Homam',
    'Varalakshmi vratham',
    'Upanayanam',
  ];
  List charges = [
    '\$${91.00}',
    '\$${151.00}',
    '\$${91.00}',
    '\$${91.00}',
    '\$${91.00}',
    '\$${151.00}',
    '\$${111.00}',
    '\$${91.00}',
    '\$${111.00}',
    '\$${91.00}',
    '\$${151.00}',
  ];
  int? selectedvalue;

  bool _value = false;
  @override
  Widget build(BuildContext context) {
    final Object? todo = ModalRoute.of(context)!.settings.arguments;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Services',
          ),
          centerTitle: true,
          leading: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 15, 8),
              child: Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const screen89()),
                    );
                  },
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
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'images/Rectangle 21.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString("jsonfile/priestfile.json"),
                builder: (context, data) {
                  var showData = json.decode(data.data.toString());
                  return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 1,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            var users;

                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const screen10new(),
                                    ),
                                  );
                                  setState(() {
                                    selectedvalue = index;
                                  });
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 0, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              radius: 35,
                                              backgroundImage: AssetImage(
                                                showData[index]['image']
                                                    .toString(),
                                              )),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                todo.toString(),
                                                // 'Tarachand Joshi',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                showData[index]['address']
                                                    .toString(),
                                                // todo.toString(),
                                                // '5547 W North Ave, Chicago',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13),
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Color.fromARGB(
                                                            39, 249, 157, 198)),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        'Telugu',
                                                        style: TextStyle(
                                                          color: Colors.red,
                                                          // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Container(
                                                    width: 60,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Color.fromARGB(
                                                            39, 249, 157, 198)),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        'Tamil',
                                                        style: TextStyle(
                                                          color: Colors.red,
                                                          // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    FutureBuilder(
                                        future: DefaultAssetBundle.of(context)
                                            .loadString(
                                                "jsonfile/priestfile.json"),
                                        builder: (context, data) {
                                          var showData =
                                              json.decode(data.data.toString());
                                          return Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: 1,
                                              physics: BouncingScrollPhysics(),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      index) {
                                                var users;

                                                return GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const screen10new(),
                                                        ),
                                                      );
                                                      setState(() {
                                                        selectedvalue = index;
                                                      });
                                                    },
                                                    child: ExpansionTile(
                                                      collapsedIconColor:
                                                          Colors.black,
                                                      title: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        // ignore: prefer_const_literals_to_create_immutables
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Icon(
                                                                  Icons
                                                                      .message_outlined,
                                                                  color: Colors
                                                                      .orange),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '4',
                                                              ),
                                                              Row(
                                                                children: [
                                                                  SizedBox(
                                                                      width:
                                                                          30),
                                                                  Icon(
                                                                      Icons
                                                                          .star,
                                                                      color: Colors
                                                                          .orange),
                                                                  SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Text(
                                                                    // showData[index]['rating'],
                                                                    '4.4',
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      children: [
                                                        comments(),
                                                        comments(),
                                                        comments(),
                                                        comments(),
                                                      ],
                                                    ));
                                              },
                                            ),
                                          );
                                        }),
                                    Divider(
                                      height: 1,
                                      thickness: 1,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ListView.builder(
                                            itemCount: service.length,
                                            shrinkWrap: true,
                                            physics: BouncingScrollPhysics(),
                                            itemBuilder: ((context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const screen111213(),
                                                      settings: RouteSettings(
                                                        arguments:
                                                            service[index],
                                                      ),
                                                    ),
                                                  );
                                                  setState(() {
                                                    selectedvalue = index;
                                                  });
                                                },
                                                child: Container(
                                                  height: 45,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Radio<int>(
                                                              value: index,
                                                              groupValue:
                                                                  selectedvalue,
                                                              fillColor: MaterialStateColor
                                                                  .resolveWith(
                                                                      (states) =>
                                                                          Colors
                                                                              .deepOrange),
                                                              onChanged:
                                                                  (index) {
                                                                setState(() {
                                                                  selectedvalue =
                                                                      index;
                                                                });
                                                              }),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(service[index]),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 60,
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
                                                            charges[index],
                                                            style: TextStyle(
                                                              color: Colors.red,
                                                              // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            })),
                                      ],
                                    ),
                                  ]),
                                ));
                          }));
                })
          ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 40,
          width: 300,
          child: FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const screen111213()),
              );
            },
            label: Text('Continue'),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 130, 34),
      ),
      //   shape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // ),
    );
  }

  comments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text('Rahul')
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(Icons.star_border_outlined),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          child: Text(
            'Very good service',
          ),
        ),
      ],
    );
  }
}

class PoojaServices {
  String pooja, charge;
  PoojaServices({required this.pooja, required this.charge});
}
