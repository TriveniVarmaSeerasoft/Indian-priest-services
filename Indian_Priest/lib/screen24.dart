// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screen21.dart';

class screen24 extends StatefulWidget {
  const screen24({super.key});

  @override
  State<screen24> createState() => _screen24State();
}

class _screen24State extends State<screen24> {
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
            'My Bookings',
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
            padding: const EdgeInsets.fromLTRB(30, 18, 20, 0),
            child: Container(
              width: 38,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // ignore: sort_child_properties_last
              child: IconButton(
                onPressed: () {},
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
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                // addAutomaticKeepAlives: false,
                itemCount: 40,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 1,
                    height: 30,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListBody(
                    children: [booking_details(Colors.white)],
                  );
                  //  Card(
                  //   child: booking_details(Colors.white),
                  // );
                },
              ),
            )),
      ),
    );
  }

  booking_details(
    Color color,
  ) {
    return Container(
      //height: 250,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 20, 0),
        child: Column(
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 34,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarachand Joshi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '5547 W North Ave, Chicago',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
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
                                width: 20,
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
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(82, 132, 197, 161),
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        'images/Vector (1).svg',
                      ),
                    ),
                  )
                ]),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Color.fromARGB(255, 253, 98, 42),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Ganapathi Puja',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(39, 255, 99, 2)),
                  child: Center(
                      child: Text(
                    '\$${91.00}',
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 98, 42),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 244, 244),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    SvgPicture.asset('images/calendar.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '23 February 2022,7:30 AM',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 244, 244),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    SvgPicture.asset('images/Vector.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'View Pooja Items Required',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: MaterialButton(
                    elevation: 0,
                    onPressed: () {},
                    color: Color.fromARGB(255, 253, 98, 42),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Re-Schedule',
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
                  width: 10,
                ),
                Flexible(
                  child: MaterialButton(
                    elevation: 0,
                    focusColor: Color.fromARGB(255, 253, 98, 42),
                    onPressed: () {
                      color:
                      Color.fromARGB(255, 253, 98, 42);
                      //  Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => screen2()));
                    },
                    color: Color.fromARGB(39, 255, 99, 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Cancel',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 253, 98, 42),
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
      //child: Text('data'),
    );
  }
}
