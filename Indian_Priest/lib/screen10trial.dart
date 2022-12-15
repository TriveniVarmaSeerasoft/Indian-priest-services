// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';

// // class screen10trial extends StatefulWidget {
// //   const screen10trial({Key? key}) : super(key: key);

// //   @override
// //   State<screen10trial> createState() => _screen10trialState();
// // }

// // class _screen10trialState extends State<screen10trial> {
// //   List<String> service = [
// //     ('Satyanarayana swamy vratham'),
// //     ('Grihapravesha puja'),
// //     ('Ganapathi puja'),
// //     ('Namakaranam'),
// //     ('Lakshmi puja'),
// //     ('Sreemantham'),
// //     ('Ayusha Homam'),
// //     ('Punya vachanam'),
// //     ('Sudarshana Homam'),
// //     ('Varalakshmi vratham'),
// //     ('Upanayanam')
// //   ];

// //   // screen10trial(this.service);
// //   List<String> charge = [
// //     '\$${91.00}',
// //     '\$${151.00}',
// //     '\$${91.00}',
// //     '\$${91.00}',
// //     '\$${91.00}',
// //     '\$${151.00}',
// //     '\$${111.00}',
// //     '\$${91.00}',
// //     '\$${111.00}',
// //     '\$${91.00}',
// //     '\$${151.00}'
// //   ];
// //   Color? _color;

// //   String? selectedvalue;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.transparent,
// //           elevation: 0,
// //           title: Text(
// //             'Services',
// //           ),
// //           centerTitle: true,
// //           leading: Padding(
// //               padding: const EdgeInsets.fromLTRB(10, 10, 15, 8),
// //               child: Container(
// //                 width: 40,
// //                 height: 20,
// //                 decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     borderRadius: BorderRadius.circular(12)),
// //                 child: IconButton(
// //                   // ignore: prefer_const_constructors
// //                   icon: Icon(
// //                     Icons.arrow_back_ios,
// //                     color: Colors.black,
// //                   ),
// //                   onPressed: () {
// //                     // Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(builder: (context) => screen10trial()),
// //                     // );
// //                   },
// //                   iconSize: 25.0,
// //                 ),
// //               )),
// //           actions: [
// //             Padding(
// //               padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
// //               child: Container(
// //                 width: 40,
// //                 height: 20,
// //                 decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     borderRadius: BorderRadius.circular(12)),
// //                 // ignore: sort_child_properties_last
// //                 child: IconButton(
// //                   onPressed: () {
// //                     // Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(builder: (context) => const screen19()),
// //                     // );
// //                   },
// //                   icon: Icon(
// //                     Icons.message_outlined,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //             ),

// //             // ignore: sort_child_properties_last
// //             Padding(
// //               padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
// //               child: Container(
// //                 width: 38,
// //                 height: 20,
// //                 decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     borderRadius: BorderRadius.circular(12)),
// //                 // ignore: sort_child_properties_last
// //                 child: IconButton(
// //                   onPressed: () {
// //                     // Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(builder: (context) => const screen18()),
// //                     // );
// //                   },
// //                   // ignore: prefer_const_constructors
// //                   icon: Icon(
// //                     Icons.notifications_none,
// //                     color: Colors.black,
// //                   ),
// //                   iconSize: 25.0,
// //                 ),
// //               ),
// //             ),
// //           ],
// //           flexibleSpace: Container(
// //             decoration: BoxDecoration(

// //                 // ignore: prefer_const_literals_to_create_immutables
// //                 gradient: LinearGradient(colors: [
// //               Color.fromARGB(255, 255, 130, 34),
// //               Color.fromARGB(255, 248, 213, 35)
// //             ], begin: Alignment.bottomRight, end: Alignment.topRight)),
// //           ),
// //         ),
// //         body: Stack(children: [
// //           Container(
// //             width: double.infinity,
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// //               color: Colors.white,
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
// //             child: Column(children: [
// //               Padding(
// //                 padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.start,
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     CircleAvatar(
// //                       radius: 35,
// //                       backgroundImage: AssetImage('images/image 4 (1).png'),
// //                     ),
// //                     SizedBox(
// //                       width: 30,
// //                     ),
// //                     Column(
// //                       mainAxisAlignment: MainAxisAlignment.start,
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           'Tarachand Joshi',
// //                           style: TextStyle(
// //                               color: Colors.black,
// //                               fontSize: 17,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                         SizedBox(height: 5),
// //                         Text(
// //                           '5547 W North Ave, Chicago',
// //                           style: TextStyle(color: Colors.grey, fontSize: 13),
// //                         ),
// //                         SizedBox(height: 5),
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           // ignore: prefer_const_literals_to_create_immutables
// //                           children: [
// //                             Text(
// //                               'Telugu',
// //                               style: TextStyle(
// //                                 color: Colors.red,
// //                                 backgroundColor:
// //                                     Color.fromARGB(255, 252, 226, 234),
// //                                 fontSize: 15,
// //                               ),
// //                             ),
// //                             SizedBox(
// //                               width: 20,
// //                             ),
// //                             Text(
// //                               'Tamil',
// //                               style: TextStyle(
// //                                 color: Colors.red,
// //                                 backgroundColor:
// //                                     Color.fromARGB(255, 252, 226, 234),
// //                                 fontSize: 15,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ]),
// //           ),
// //           Expanded(
// //               child: Padding(
// //                   padding: const EdgeInsets.all(20.0),
// //                   // child: ListView.builder(
// //                   //     shrinkWrap: true,
// //                   //     itemCount: service.length,
// //                   //     itemBuilder: (BuildContext context, index) {
// //                   //       return Container(
// //                   //           height: 55,
// //                   //           // ignore: prefer_const_constructors
// //                   //           decoration: BoxDecoration(
// //                   //               borderRadius: BorderRadius.all(Radius.circular(5)),
// //                   //               color: Colors.white,
// //                   //               // ignore: prefer_const_literals_to_create_immutables
// //                   //               boxShadow: [
// //                   //                 BoxShadow(
// //                   //                     color: Color.fromARGB(255, 244, 242, 242),
// //                   //                     spreadRadius: 8)
// //                   //               ]),
// //                   //           width: double.infinity,
// //                   //           // ignore: prefer_const_literals_to_create_immutables
// //                   //           child:
// //                   // ListTile(
// //                   //   leading: Row(
// //                   //     children: [
// //                   //       Row(children: <Widget>[
// //                   //         Center(
// //                   //             child: InkWell(
// //                   //           onTap: () {
// //                   //             setState(() {
// //                   //               _value = !_value;
// //                   //             });
// //                   //           },
// //                   //           child: Container(
// //                   //             width: 20,
// //                   //             height: 20,
// //                   //             // decoration: BoxDecoration(
// //                   //             //     shape: BoxShape.circle,
// //                   //             //     color: Colors.deepOrange),
// //                   //             child: _value
// //                   //                 ? Icon(
// //                   //                     Icons.check_circle,
// //                   //                     color: Colors.grey,
// //                   //                   )
// //                   //                 : Icon(
// //                   //                     Icons.check_circle_outline,
// //                   //                     // size: 30.0,
// //                   //                     color: Colors.deepOrange,
// //                   //                   ),
// //                   //           ),
// //                   //         )),
// //                   //         Text(service[index].pooja),
// //                   //       ]),
// //                   //     ],
// //                   //   ),
// //                   //   trailing: Container(
// //                   //     width: 60,
// //                   //     height: 25,
// //                   //     decoration: BoxDecoration(
// //                   //         borderRadius: BorderRadius.circular(20),
// //                   //         color: Color.fromARGB(39, 249, 157, 198)),
// //                   //     child: Align(
// //                   //       alignment: Alignment.center,
// //                   //       child: Text(
// //                   //         service[index].charge,
// //                   //         style: TextStyle(
// //                   //           color: Colors.red,
// //                   //           backgroundColor:
// //                   //               Color.fromARGB(255, 252, 226, 234),
// //                   //           fontSize: 15,
// //                   //         ),
// //                   //       ),
// //                   //     ),
// //                   //   ),
// //                   // ),
// //                   child: ListView.builder(
// //                       itemBuilder: (BuildContext context, index) {
// //                     return RadioListTile(
// //                       value: Color,
// //                       groupValue: _color,
// //                       onChanged: (color) {
// //                         setState(() {
// //                           _color = color as Color?;
// //                         });
// //                       },
// //                       title: Text(service[index]),
// //                       secondary: Container(
// //                         width: 60,
// //                         height: 25,
// //                         decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(20),
// //                             color: Color.fromARGB(39, 249, 157, 198)),
// //                         child: Align(
// //                           alignment: Alignment.center,
// //                           child: Text(
// //                             charge[index],
// //                             style: TextStyle(
// //                               color: Colors.red,
// //                               backgroundColor:
// //                                   Color.fromARGB(255, 252, 226, 234),
// //                               fontSize: 15,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   })))
// //         ]));
// //   }
// //   // Expanded(
// //   //     child: Padding(
// //   //         padding: const EdgeInsets.all(20.0),
// //   //         child: Expanded(
// //   //             child: ListView.builder(
// //   //                 shrinkWrap: true,

// //   //                 // controller: controller,
// //   //                 itemCount: service.length,
// //   //                 // physics: BouncingScrollPhysics(),
// //   //                 itemBuilder: (BuildContext context, int index) {
// //   //                   return Container(
// //   //                     child:

// //   //                         // ignore: prefer_const_constructors
// //   //                         ListTile(
// //   //                       leading:
// //   // Radio<String>(
// //   //                           value: 'cash payment',
// //   //                           groupValue: selectedvalue,
// //   //                           // fillColor: Colors.deepOrange,
// //   //                           onChanged: (val) {
// //   //                             setState(() {
// //   //                               selectedvalue = val;
// //   //                             });
// //   //                           }),
// //   //                       // Icon(
// //   //                       //   Icons.check_circle_outline,
// //   //                       //   color: Colors.grey,
// //   //                       // ),
// //   //                       // : Icon(
// //   //                       //     Icons.check_circle,
// //   //                       //     // size: 30.0,
// //   //                       //     color: Colors.deepOrange,
// //   //                       //   ),
// //   //                       title: Text(service[index]),
// //   //                       trailing: Container(
// //   //                         width: 60,
// //   //                         height: 25,
// //   //                         decoration: BoxDecoration(
// //   //                             borderRadius: BorderRadius.circular(20),
// //   //                             color: Color.fromARGB(39, 249, 157, 198)),
// //   //                         child: Align(
// //   //                           alignment: Alignment.center,
// //   //                           child: Text(
// //   //                             charge[index],
// //   //                             style: TextStyle(
// //   //                               color: Colors.red,
// //   //                               backgroundColor:
// //   //                                   Color.fromARGB(255, 252, 226, 234),
// //   //                               fontSize: 15,
// //   //                             ),
// //   //                           ),
// //   //                         ),
// //   //                       ),
// //   //                       onTap: () {
// //   //                         setState(() {});
// //   //                       },
// //   //                     ),
// //   //                   );
// //   //                 })

// // }

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class screen10trial extends StatefulWidget {
//   const screen10trial({Key? key}) : super(key: key);

//   @override
//   State<screen10trial> createState() => _screen10trialState();
// }

// class _screen10trialState extends State<screen10trial> {
//   List<String> service = [
//     ('Satyanarayana swamy vratham'),
//     ('Grihapravesha puja'),
//     ('Ganapathi puja'),
//     ('Namakaranam'),
//     ('Lakshmi puja'),
//     ('Sreemantham'),
//     ('Ayusha Homam'),
//     ('Punya vachanam'),
//     ('Sudarshana Homam'),
//     ('Varalakshmi vratham'),
//     ('Upanayanam')
//   ];

// //   // screen10trial(this.service);
//   List<String> charge = [
//     '\$${91.00}',
//     '\$${151.00}',
//     '\$${91.00}',
//     '\$${91.00}',
//     '\$${91.00}',
//     '\$${151.00}',
//     '\$${111.00}',
//     '\$${91.00}',
//     '\$${111.00}',
//     '\$${91.00}',
//     '\$${151.00}'
//   ];
//   Color? _color;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Text(
//             'Services',
//           ),
//           centerTitle: true,
//           leading: Padding(
//               padding: const EdgeInsets.fromLTRB(10, 10, 15, 8),
//               child: Container(
//                 width: 40,
//                 height: 20,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12)),
//                 child: IconButton(
//                   // ignore: prefer_const_constructors
//                   icon: Icon(
//                     Icons.arrow_back_ios,
//                     color: Colors.black,
//                   ),
//                   onPressed: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //       builder: (context) => const screen89()),
//                     // );
//                   },
//                   iconSize: 25.0,
//                 ),
//               )),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
//               child: Container(
//                 width: 40,
//                 height: 20,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12)),
//                 // ignore: sort_child_properties_last
//                 child: IconButton(
//                   onPressed: () {},
//                   // ignore: prefer_const_constructors
//                   icon: Icon(
//                     Icons.message_outlined,
//                     color: Colors.black,
//                   ),
//                   // iconSize: 25.0,
//                 ),
//               ),
//             ),

//             // ignore: sort_child_properties_last
//             Padding(
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
//               child: Container(
//                 width: 38,
//                 height: 20,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12)),
//                 // ignore: sort_child_properties_last
//                 child: IconButton(
//                   onPressed: () {},
//                   // ignore: prefer_const_constructors
//                   icon: Icon(
//                     Icons.notifications_none,
//                     color: Colors.black,
//                   ),
//                   iconSize: 25.0,
//                 ),
//               ),
//             ),
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(

//                 // ignore: prefer_const_literals_to_create_immutables
//                 gradient: LinearGradient(colors: [
//               Color.fromARGB(255, 255, 130, 34),
//               Color.fromARGB(255, 248, 213, 35)
//             ], begin: Alignment.bottomRight, end: Alignment.topRight)),
//           ),
//         ),
//         body: Stack(children: [
//           Container(
//             width: double.infinity,
//             child: Image(
//               image: AssetImage(
//                 'images/Rectangle 21.png',
//               ),
//               fit: BoxFit.fill,
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//               child: Column(children: [
//                 Padding(
//                     padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           radius: 35,
//                           backgroundImage: AssetImage('images/image 4 (1).png'),
//                         ),
//                         SizedBox(
//                           width: 30,
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Tarachand Joshi',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 5),
//                             Text(
//                               '5547 W North Ave, Chicago',
//                               style:
//                                   TextStyle(color: Colors.grey, fontSize: 13),
//                             ),
//                             SizedBox(height: 5),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               // ignore: prefer_const_literals_to_create_immutables
//                               children: [
//                                 Container(
//                                   width: 60,
//                                   height: 25,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Color.fromARGB(39, 249, 157, 198)),
//                                   child: Align(
//                                     alignment: Alignment.center,
//                                     child: Text(
//                                       'Telugu',
//                                       style: TextStyle(
//                                         color: Colors.red,
//                                         // backgroundColor: Color.fromARGB(255, 252, 226, 234),
//                                         fontSize: 15,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Container(
//                                   width: 60,
//                                   height: 25,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Color.fromARGB(39, 249, 157, 198)),
//                                   child: Align(
//                                     alignment: Alignment.center,
//                                     child: Text(
//                                       'Tamil',
//                                       style: TextStyle(
//                                         color: Colors.red,
//                                         // backgroundColor: Color.fromARGB(255, 252, 226, 234),
//                                         fontSize: 15,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ))
//               ])),
//           // ..............
//           // ListView(
//           //   children: Colors.primaries.map((color) {
//           //     return

//           // ........................
//           ListView.builder(
//               itemCount: service.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                     leading: RadioListTile<Color>(
//                   value: index,
//                   groupValue: _color,
//                   onChanged: (index) {
//                     setState(() {
//                       _color = index;
//                     });
//                   },
//                   title: Text(service[index]),
//                   secondary: Container(
//                     width: 60,
//                     height: 25,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Color.fromARGB(39, 249, 157, 198)),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         charge[index],
//                         style: TextStyle(
//                           color: Colors.red,
//                           backgroundColor: Color.fromARGB(255, 252, 226, 234),
//                           fontSize: 15,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ));
//               }),
//         ]));
//   }
// }

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';

// import 'screen12,13&14.dart';
// import 'screen18.dart';
// import 'screen19.dart';
// import 'screen9_10.dart';

class screen10trial extends StatefulWidget {
  const screen10trial({Key? key}) : super(key: key);

  @override
  State<screen10trial> createState() => _screen11State();
}

class _screen11State extends State<screen10trial> {
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
  // List? listresponse2;
  // Future _apicall() async {
  //   http.Response response1;
  //   response1 = await http
  //       .get(Uri.parse("http://192.168.0.118:8081/static_data_priests"));
  //   if (response1.statusCode == 200) {
  //     print('successful');
  //     setState(() {
  //       listresponse2 = json.decode(response1.body);
  //     });
  //   } else {
  //     print('fetch unsuccessful');
  //   }
  // }

  // void initState() {
  //   super.initState();
  //   _apicall();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Services',
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 8),
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
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => screen9_10()));
              },
              color: Colors.white,
            ),
          ),
        ),
        leadingWidth: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
            child: Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // ignore: sort_child_properties_last
              child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const screen19()),
                  // );
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
            padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
            child: Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // ignore: sort_child_properties_last
              child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const screen18()),
                  // );
                },
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
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
            child: Column(children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            // backgroundImage:
                            //     AssetImage(image[index]),
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
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '5547 W North Ave, Chicago',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                    width: 60,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color.fromARGB(39, 249, 157, 198)),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Telugu',
                                        style: TextStyle(
                                          color: Colors.red,
                                          // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(39, 249, 157, 198)),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Tamil',
                                        style: TextStyle(
                                          color: Colors.red,
                                          // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                          fontSize: 12,
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
                      ExpansionTile(
                        collapsedIconColor: Colors.black,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.message_outlined,
                                    color: Colors.orange),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4',
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Icon(Icons.star, color: Colors.orange),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
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
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              ListView.builder(
                  itemCount: service.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio<int>(
                                  value: index,
                                  groupValue: selectedvalue,
                                  // fillColor: Colors.deepOrange,
                                  onChanged: (index) {
                                    setState(() {
                                      selectedvalue = index;
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              Text(service[index]),
                            ],
                          ),
                          Text(
                            charges[index],
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.red,
                              backgroundColor:
                                  Color.fromARGB(255, 252, 226, 234),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  }))
            ]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const screen12_13_14()),
          // );
        },
        label: Container(
          width: 300,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Continue',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 123, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      backgroundColor: Color.fromARGB(255, 255, 130, 34),
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
