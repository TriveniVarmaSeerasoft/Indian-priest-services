// // ignore_for_file: sort_child_properties_last, prefer_const_constructors

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class screen16 extends StatefulWidget {
//   const screen16({Key? key}) : super(key: key);

//   @override
//   State<screen16> createState() => _screen16State();
// }

// class _screen16State extends State<screen16> {
//   List<Pooja> samagri = [
//     Pooja(names: 'A Clay image of Lord Ganesha.'),
//     Pooja(
//         names:
//             'Akshata-are prepared by mixing rice with wet turmeric,saffron,and sandalwood paste'),
//     Pooja(
//         names:
//             'Glass,udhdharani (the spoon for taking water),plate (small one to put the water as an offering)'),
//     Pooja(names: 'Kumkum-saffron'),
//     Pooja(names: 'Turmeric'),
//     Pooja(names: 'Sandal wood paste'),
//     Pooja(names: 'Betel leaves,nuts'),
//     Pooja(names: 'Pedestal'),
//     Pooja(
//         names:
//             'Mango leaves-To decorate the threshold and to put in the kalash(see picture)'),
//     Pooja(names: 'Water-fetch after taking a bath'),
//     Pooja(names: 'Two pieces of red cloth'),
//     Pooja(
//         names: "Lamps and oil (sesame) or ghee(cow's) for the lamp and wicks "),
//     Pooja(names: 'Incense sticks'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             title: Text(
//               'Pooja Items Required',
//             ),
//             centerTitle: true,
//             leading: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 15, 8),
//                 child: Container(
//                   width: 40,
//                   height: 20,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: IconButton(
//                     // ignore: prefer_const_constructors
//                     icon: Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.black,
//                     ),
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //       builder: (context) => const screen8()),
//                       // );
//                     },
//                     iconSize: 25.0,
//                   ),
//                 )),
//             actions: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
//                 child: Container(
//                   width: 40,
//                   height: 20,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12)),
//                   // ignore: sort_child_properties_last
//                   child: IconButton(
//                     onPressed: () {},
//                     // ignore: prefer_const_constructors
//                     icon: Icon(
//                       Icons.message_outlined,
//                       color: Colors.black,
//                     ),
//                     // iconSize: 25.0,
//                   ),
//                 ),
//               ),

//               // ignore: sort_child_properties_last
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
//                 child: Container(
//                   width: 38,
//                   height: 20,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12)),
//                   // ignore: sort_child_properties_last
//                   child: IconButton(
//                     onPressed: () {},
//                     // ignore: prefer_const_constructors
//                     icon: Icon(
//                       Icons.notifications_none,
//                       color: Colors.black,
//                     ),
//                     iconSize: 25.0,
//                   ),
//                 ),
//               ),
//             ],
//             flexibleSpace: Container(
//               decoration: BoxDecoration(

//                   // ignore: prefer_const_literals_to_create_immutables
//                   gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 255, 130, 34),
//                 Color.fromARGB(255, 248, 213, 35)
//               ], begin: Alignment.bottomRight, end: Alignment.topRight)),
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Stack(children: [
//               Container(
//                 width: double.infinity,
//                 child: Image(
//                   image: AssetImage(
//                     'images/Rectangle 21.png',
//                   ),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Column(children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           radius: 30,
//                           backgroundImage: AssetImage('images/image 4 (1).png'),
//                         ),
//                         SizedBox(
//                           width: 20,
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
//                       ]),
//                 ),
//                 // SizedBox(height: 10),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     // ignore: prefer_const_literals_to_create_immutables
//                     children: [
//                       Icon(
//                         Icons.check_circle,
//                         color: Colors.deepOrange,
//                       ),
//                       SizedBox(width: 20),
//                       Text(
//                         'Ganapathi Puja',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 17),
//                       ),
//                       SizedBox(width: 100),
//                       Container(
//                         width: 60,
//                         height: 25,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Color.fromARGB(39, 249, 157, 198)),
//                         // ignore: prefer_const_constructors
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Text(
//                             '\$${91.00}',
//                             style: TextStyle(
//                               color: Colors.red,
//                               // backgroundColor: Color.fromARGB(255, 252, 226, 234),
//                               fontSize: 15,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // SizedBox(height: 10),

//                 Divider(thickness: 2),
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(children: [
//                           Text(
//                             'Pooja samagri (items) Required',
//                             style: TextStyle(
//                                 color: Color.fromARGB(255, 19, 139, 23),
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 fontFamily: 'Montserrat'),
//                           ),
//                           SizedBox(width: 10),
//                           RaisedButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(5.0),
//                                 side: BorderSide(
//                                   color: Colors.deepOrange,
//                                 )),
//                             onPressed: () {
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(
//                               //       builder: (context) =>
//                               //           const screen10new()),
//                               // );
//                             },
//                             child: Text(
//                               'Download List',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             color: Colors.deepOrange,
//                           ),
//                         ]),

//                         // ..................................
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: ListView.builder(
//                             itemCount: samagri.length,
//                             itemBuilder: (BuildContext context, int index) {
//                               return Row(
//                                 children: [
//                                   Icon(Icons.check),
//                                   Text(samagri[index].names),
//                                 ],
//                               );
//                             },
//                           ),
//                         ),
//                         // Column(
//                         //   children: [
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text('A Clay image of Lord Ganesha.'),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //             'Akshata-are prepared by mixing rice with wet turmeric,saffron,and sandalwod paste'),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //             "Glass,udhdharani (the spoon for taking water),plate (small one to put the water as an offering)"),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text('Kumkum-saffron'),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           'Turmeric',
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           'Sandal wood paste',
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           'Betel leaves,nuts',
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           'Pedestal',
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           'Mango leaves-To decorate the threshold and to put in the kalash(see picture)',
//                         //           overflow: TextOverflow.ellipsis,
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text('Water-fetch after taking a bath'),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       // ignore: prefer_const_literals_to_create_immutables
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           'Two pieces of red cloth',
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       // ignore: prefer_const_literals_to_create_immutables
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text(
//                         //           "Lamps and oil (sesame) or ghee(cow's) for the lamp and wicks ",
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     Row(
//                         //       // ignore: prefer_const_literals_to_create_immutables
//                         //       children: [
//                         //         Icon(Icons.check),
//                         //         Text('Incense sticks'),
//                         //       ],
//                         //     ),
//                         //   ],
//                         // ),

//                         //  ..........................................................................//
//                         // Column(
//                         //   children: [
//                         //     ListView.builder(
//                         //       itemCount: samagri.length,
//                         //       itemBuilder: (BuildContext context, int index) {
//                         //         return ListTile(
//                         //           title: Text(samagri[index]),
//                         //         );
//                         //       },
//                         //     ),
//                         //   ],
//                         // ),
//                       ]),
//                 ),
//               ]),
//             ]),
//           ),
//           backgroundColor: Color.fromARGB(255, 255, 130, 34),
//         ));
//   }
// }

// class Pooja {
//   String names;
//   Pooja({
//     required this.names,
//   });
// }
