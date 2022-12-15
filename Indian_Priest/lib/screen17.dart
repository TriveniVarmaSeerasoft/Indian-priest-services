// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indian_priest/screen16.dart';

class screen17 extends StatefulWidget {
  const screen17({Key? key}) : super(key: key);

  @override
  State<screen17> createState() => _screen17State();
}

class _screen17State extends State<screen17> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Notifications',
          ),
          centerTitle: true,
          leading: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 8),
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
                      MaterialPageRoute(builder: (context) => const screen16()),
                    );
                  },
                  iconSize: 25.0,
                ),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 8),
              child: Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                // ignore: sort_child_properties_last
                child: SvgPicture.asset('images/message-circle-outline 1.svg',
                    height: 5, width: 5, fit: BoxFit.scaleDown),
              ),
            ),

            // ignore: sort_child_properties_last
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
            //   child: Container(
            //     width: 38,
            //     height: 20,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(12)),
            //     // ignore: sort_child_properties_last
            //     child: IconButton(
            //       onPressed: () {},
            //       // ignore: prefer_const_constructors
            //       icon: Icon(
            //         Icons.notifications_none,
            //         color: Colors.black,
            //       ),
            //       iconSize: 25.0,
            //     ),
            //   ),
            // ),
          ],
          flexibleSpace: Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(

                // ignore: prefer_const_literals_to_create_immutables
                // ignore: prefer_const_constructors
                // ignore: prefer_const_literals_to_create_immutables
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 130, 34),
              Color.fromARGB(255, 248, 213, 35)
            ], begin: Alignment.bottomRight, end: Alignment.topRight)),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image(
                  // ignore: prefer_const_constructors
                  image: AssetImage(
                    'images/Rectangle 21.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 139, 23),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            height: 60,
                            color: Color.fromARGB(255, 246, 242, 242),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('images/Vector (11).svg'),
                                  SizedBox(width: 15),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            'Tarachand Joshi',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(width: 5),
                                          Text('sent a message',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                      Text(
                                        '2 minutes ago',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            height: 60,
                            color: Color.fromARGB(255, 246, 242, 242),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset('images/Vector (3).svg'),
                                      SizedBox(width: 15),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            'Ganapathi Puja with Tarachand Joshi',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            'booked on 23 February 2022.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '28 minutes ago',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Container(
                                height: 90,
                                color: Color.fromARGB(255, 246, 242, 242),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SvgPicture.asset('images/Vector (3).svg'),
                                      SizedBox(width: 15),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your Event Lakshmi Pooja starts in 1 hour',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '1 hour ago',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                side: BorderSide(
                                                  color: Colors.deepOrange,
                                                )),
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           const screen10new()),
                                              // );
                                            },
                                            child: Text(
                                              'View Event',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            color: Colors.deepOrange,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // ignore: deprecated_member_use
                                )))
                      ]),
                ),
                // Divider(),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Yesterday',
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 139, 23),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            height: 60,
                            color: Color.fromARGB(255, 246, 242, 242),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset('images/Vector (3).svg'),
                                      SizedBox(width: 15),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text(
                                            'Ganapathi Puja with Tarachand Joshi',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            'booked on 23 February 2022.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '28 minutes ago',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Container(
                                height: 90,
                                color: Color.fromARGB(255, 246, 242, 242),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SvgPicture.asset('images/Vector (3).svg'),
                                      SizedBox(width: 15),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your Event Lakshmi Pooja starts in 1 hour',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '1 hour ago',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                side: BorderSide(
                                                  color: Colors.deepOrange,
                                                )),
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           const screen10new()),
                                              // );
                                            },
                                            child: Text(
                                              'View Event',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            color: Colors.deepOrange,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // ignore: deprecated_member_use
                                )))
                      ]),
                ),
              ]),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 130, 34),
      ),
    );
  }
}
