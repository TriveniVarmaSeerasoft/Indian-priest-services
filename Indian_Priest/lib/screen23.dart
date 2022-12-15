// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class screen23 extends StatefulWidget {
  const screen23({Key? key}) : super(key: key);

  @override
  State<screen23> createState() => _screen23State();
}

class _screen23State extends State<screen23> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Add Credit card',
            ),
            centerTitle: true,
            leading: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 8),
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
                  child: SvgPicture.asset('images/message-circle-outline 1.svg',
                      height: 5, width: 5, fit: BoxFit.scaleDown),
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
              // ignore: prefer_const_constructors
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
                // ignore: prefer_const_constructors
                image: AssetImage(
                  'images/Rectangle 21.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SvgPicture.asset('images/Frame (6).svg'),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Card Number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '5484 2458 4584 6987',
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Expiration Date',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '12/25',
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'CVV/CVC',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '631',
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Card Holder Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Venkatesh Rao',
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: MaterialButton(
                      onPressed: () {
                        //  Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => screen2()));
                      },
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Add My Card',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ])),
          backgroundColor: Color.fromARGB(255, 255, 130, 34),
        ));
  }
}
