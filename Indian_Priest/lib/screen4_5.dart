// import 'package:flutter/material.dart';
// import 'package:indian_priest/screen2.dart';
// import 'package:indian_priest/screen6_7_8.dart';

// class screen4_5 extends StatefulWidget {
//   const screen4_5({super.key});

//   @override
//   State<screen4_5> createState() => _screen4_5State();
// }

// class _screen4_5State extends State<screen4_5> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//           child: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 255, 201, 5),
//           Color.fromARGB(255, 253, 98, 42)
//         ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                           backgroundColor: Color.fromARGB(255, 229, 228, 228),
//                           title: Text(
//                               "Allow 'Priest Services' Would like to Use Your Current Location",
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 15),
//                               textAlign: TextAlign.center),
//                           actions: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Row(
//                                 children: [
//                                   Flexible(
//                                     // ignore: deprecated_member_use
//                                     child: MaterialButton(
//                                       onPressed: () async {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     screen2()));
//                                       },
//                                       color: Colors.deepOrange,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       child: Padding(
//                                         padding:
//                                             EdgeInsets.symmetric(vertical: 14),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           // ignore: prefer_const_literals_to_create_immutables
//                                           children: [
//                                             Text("Don't Allow",
//                                                 style: TextStyle(
//                                                     color: Colors.white)),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(width: 20),
//                                   Flexible(
//                                     // ignore: deprecated_member_use
//                                     child: MaterialButton(
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     screen6_7_8()));
//                                       },
//                                       color: Colors.deepOrange,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       child: Padding(
//                                         padding:
//                                             EdgeInsets.symmetric(vertical: 14),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           // ignore: prefer_const_literals_to_create_immutables
//                                           children: [
//                                             Text("OK",
//                                                 style: TextStyle(
//                                                     color: Colors.white)),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ));
//               },
//               child: Container(
//                 width: 350,
//                 height: 190,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Color.fromARGB(255, 253, 98, 42),
//                     border: Border.all(width: 1)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10)),
//                       height: 170,
//                       child: Image.network(
//                         'https://cdn1.vectorstock.com/i/thumb-large/84/05/indian-pandit-cartoon-vector-35888405.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Text('Searching for Priests')
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//             GestureDetector(
//               onTap: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                           backgroundColor: Color.fromARGB(255, 229, 228, 228),
//                           title: Text(
//                               "Allow 'Priest Services' Would like to Use Your Current Location",
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 15),
//                               textAlign: TextAlign.center),
//                           actions: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Row(
//                                 children: [
//                                   Flexible(
//                                     // ignore: deprecated_member_use
//                                     child: MaterialButton(
//                                       onPressed: () async {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     screen2()));
//                                       },
//                                       color: Colors.deepOrange,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       child: Padding(
//                                         padding:
//                                             EdgeInsets.symmetric(vertical: 14),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           // ignore: prefer_const_literals_to_create_immutables
//                                           children: [
//                                             Text("Don't Allow",
//                                                 style: TextStyle(
//                                                     color: Colors.white)),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(width: 20),
//                                   Flexible(
//                                     // ignore: deprecated_member_use
//                                     child: MaterialButton(
//                                       onPressed: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     screen6_7_8()));
//                                       },
//                                       color: Colors.deepOrange,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(5)),
//                                       child: Padding(
//                                         padding:
//                                             EdgeInsets.symmetric(vertical: 14),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           // ignore: prefer_const_literals_to_create_immutables
//                                           children: [
//                                             Text("OK",
//                                                 style: TextStyle(
//                                                     color: Colors.white)),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ));
//               },
//               child: Container(
//                 width: 350,
//                 height: 200,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Color.fromARGB(255, 255, 201, 5),
//                     // gradient: LinearGradient(colors: [
//                     //   Color.fromARGB(255, 253, 98, 42),
//                     //   Color.fromARGB(255, 255, 201, 5),
//                     // ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//                     border: Border.all(width: 1)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [Text('Searching for '), Text('Temples')],
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10)),
//                       height: 188,
//                       width: 195,
//                       child: Image.network(
//                         'https://thumbs.dreamstime.com/b/hindu-temple-flag-isolated-atodhya-hindu-spiritual-temple-flag-isolated-151501485.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }

// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indian_priest/screen2.dart';

import 'screen1.dart';
import 'screen3.dart';
import 'screen6_7_8.dart';

class screen4_5 extends StatefulWidget {
  @override
  State<screen4_5> createState() => _screen4_5State();
}

class _screen4_5State extends State<screen4_5> {
  bool securetext = true;
  bool visiblility = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
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
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => screen1()));
                },
                color: Colors.white,
              ),
            ),
          ),
          leadingWidth: 80,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 201, 5),
            Color.fromARGB(255, 253, 98, 42)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
              child: SingleChildScrollView(
            child: Stack(children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('images/Asset 2@4x 1.png')),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 95, 8, 0),
                child: SvgPicture.asset(
                  'images/Vector (9).svg',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 135, 50, 0),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: 100,
                          child: SvgPicture.asset('images/Frame (5).svg'),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome Amit',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Welcome to priest Services online,
Please select from below to start searching.''',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: (() {
                          asklocation();
                        }),
                        child: Container(
                          width: 284,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.5, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 7, 82, 157),
                                    Color.fromARGB(255, 193, 212, 230)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(29, 0, 0, 0),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(00, 2.0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'images/Group 1720.svg',
                                  height: 88.78,
                                  width: 88.78,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '''Searching 
for Priests''',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: (() {
                          asklocation();
                        }),
                        child: Container(
                          width: 284,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.5, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 253, 98, 42),
                                    Color.fromARGB(255, 255, 212, 103)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(29, 0, 0, 0),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(00, 2.0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'images/Group 1721.svg',
                                  height: 88.78,
                                  width: 88.78,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '''Searching 
for Temples''',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )),
        ));
  }

  asklocation() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color.fromARGB(255, 229, 228, 228),
              title: Text(
                  "'Priest Services' Would like to Use Your Current Location",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Flexible(
                        // ignore: deprecated_member_use
                        child: MaterialButton(
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => screen2()));
                          },
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Don't Allow",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        // ignore: deprecated_member_use
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => screen6_7_8()));
                          },
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Allow",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
