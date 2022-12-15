// ignore_for_file: prefer_const_constructors, unused_field
// import 'package:flutter/src/rendering/box.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:indian_priest/screen15.dart';
import 'package:indian_priest/screen20.dart';

class screen14 extends StatefulWidget {
  const screen14({Key? key}) : super(key: key);

  @override
  State<screen14> createState() => _screen14State();
}

class _screen14State extends State<screen14> {
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
  String? selectedvalue;
  @override
  Widget build(BuildContext context) {
    final Object? todo2 = ModalRoute.of(context)!.settings.arguments;
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
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => screen20()));
                    },
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
          body: Stack(children: [
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'images/Rectangle 21.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            SingleChildScrollView(
                child: Column(children: [
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
                        width: 30,
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
                            itemCount: 1,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, index) {
                              var users;

                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const screen15(),
                                    ),
                                  );
                                  setState(() {
                                    selectedvalue = index as String?;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.deepOrange,
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        todo2.toString(),
                                        // 'Ganapathi Puja',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      SizedBox(width: 100),
                                      Container(
                                        width: 60,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                39, 249, 157, 198)),
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
                              );
                            }));
                  }),
              Divider(thickness: 2),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_literals_to_create_immutables
                        Row(children: [
                          Text(
                            'Select Payment',
                            style: TextStyle(
                                color: Color.fromARGB(255, 19, 139, 23),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ]),
                        SizedBox(height: 10),
                        Container(
                          height: 50,
                          color: Color.fromARGB(255, 232, 231, 231),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  )),
                                  child: Image.network(
                                    'https://cdn.iconscout.com/icon/premium/png-256-thumb/payment-2193968-1855546.png',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Cash Payment',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 100),
                                Radio<String>(
                                    value: 'cash payment',
                                    groupValue: selectedvalue,
                                    // fillColor: Colors.deepOrange,
                                    onChanged: (val) {
                                      setState(() {
                                        selectedvalue = val;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 50,
                          color: Color.fromARGB(255, 232, 231, 231),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  )),
                                  child: Image.network(
                                    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/zcxtywwtavspe1uiizox',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Master Card',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 110),
                                Radio<String>(
                                    value: 'Master card',
                                    groupValue: selectedvalue,
                                    // fillColor: Colors.deepOrange,
                                    onChanged: (val) {
                                      setState(() {
                                        selectedvalue = val;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          //  Text('Entry A'),
                        ),

                        SizedBox(height: 10),
                        Text(
                          'Promo Code',
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 139, 23),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter Promo Code',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Colors.orange, width: 2)),
                            ),
                            onTap: () async {}),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // ignore: deprecated_member_use
                            MaterialButton(
                              onPressed: () {
                                //  Navigator.push(context,
                                //       MaterialPageRoute(builder: (context) => screen2()));
                              },
                              color: Colors.grey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 17),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => screen15()));
                              },
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 19, horizontal: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('Confirm Booking',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]))
            ]))
          ]),
          backgroundColor: Color.fromARGB(255, 255, 130, 34),
        ));
  }
}
