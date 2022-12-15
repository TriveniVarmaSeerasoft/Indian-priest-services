// ignore_for_file: prefer_const_constructors
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:indian_priest/screen16old.dart';
import 'package:indian_priest/screen16.dart';
import 'package:indian_priest/screen20.dart';

class screen15 extends StatefulWidget {
  const screen15({Key? key}) : super(key: key);

  @override
  State<screen15> createState() => _screen15State();
}

class _screen15State extends State<screen15> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Chat',
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const screen8()),
                    // );
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
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/image 4 (1).png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarachand Joshi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '5547 W North Ave, Chicago',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(39, 249, 157, 198)),
                                child: Align(
                                  alignment: Alignment.center,
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(39, 249, 157, 198)),
                                child: Align(
                                  alignment: Alignment.center,
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
                    ]),
              ),
              // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Ganapathi Puja',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(width: 100),
                    Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(39, 249, 157, 198)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\$${91.00}',
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
              // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const screen16()),
                    );
                  },
                  child: Container(
                    height: 50,
                    color: Color.fromARGB(255, 232, 231, 231),

                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.white,
                            width: 2,
                          )),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.feed_outlined,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'View Pooja items required',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 100),
                      ],
                    ),
                    //  Text('Entry A'),
                  ),
                ),
              ),
              Divider(thickness: 2),
              Container(
                height: 120,
                child: SvgPicture.asset('images/Group (2).svg'),
              ),
              SizedBox(height: 10),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Your service has been successfully booked'),
                  Text(
                    'Event Date: 23 February 2022, 7:30 am',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'What next?',
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    'You can start messaging with Tarachand Joshi.',
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => screen20()));
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(82, 132, 197, 161),
                                // color: Color.fromARGB(255, 232, 231, 231),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset(
                                  'images/Vector (10).svg',
                                  height: 30,
                                  width: 20,
                                ),
                              ),
                            ),
                          ),
                          Text('Message'),
                        ],
                      ),
                      SizedBox(width: 80),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (() {
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
                                                          screen15()));
                                            },
                                            child: Text('OK'),
                                          )
                                        ],
                                      ));
                            }),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(82, 132, 197, 161),
                                // color: Color.fromARGB(255, 232, 231, 231),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset(
                                  'images/phone-call.svg',
                                  height: 30,
                                  width: 20,
                                ),
                              ),
                            ),
                          ),
                          Text('Call'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ])
          ]),
        ),
        backgroundColor: Color.fromARGB(255, 255, 130, 34),
      ),
    );
  }
}
