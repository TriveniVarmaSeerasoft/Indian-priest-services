// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screen21.dart';

class screen22 extends StatefulWidget {
  const screen22({super.key});

  @override
  State<screen22> createState() => _screen22State();
}

class _screen22State extends State<screen22> {
  bool val1 = false;
  bool val2 = false;

  bool val3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
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
                Icons.arrow_back,
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
              padding: const EdgeInsets.fromLTRB(0, 18, 20, 0),
              child: Row(
                children: [
                  // Container(
                  //   width: 39,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(12)),
                  //   // ignore: sort_child_properties_last
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     // ignore: prefer_const_constructors
                  //     icon: Icon(
                  //       Icons.message_outlined,
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 39,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    // ignore: sort_child_properties_last
                    child: IconButton(
                      onPressed: () {},
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 201, 5),
          Color.fromARGB(255, 253, 98, 42)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Container(
              height: double.infinity,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Column(
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const CircleAvatar(
                          radius: 60,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Amit Kumar',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Text('Chicago',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Text('245-548-1458',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Call',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          CupertinoSwitch(
                              value: val1,
                              onChanged: (value) {
                                setState(() {
                                  val1 = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Notificatons',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          CupertinoSwitch(
                              value: val2,
                              onChanged: (value) {
                                setState(() {
                                  val2 = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Languages',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Text(
                                'English',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              IconButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => screen22()));
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: Text('Coming Soon'),
                                              actions: [
                                                MaterialButton(
                                                  onPressed: () {
                                                    Navigator.pop(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                screen22()));
                                                  },
                                                  child: Text('OK'),
                                                )
                                              ],
                                            ));
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 20,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
