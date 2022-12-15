// // ignore_for_file: non_constant_identifier_names, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:indian_priest/pooja.dart';
// import 'package:indian_priest/pooja.dart';
// import 'package:indian_priest/screen10.dart';

// class screen10 extends StatefulWidget {
//   const screen10({Key? key}) : super(key: key);

//   @override
//   State<screen10> createState() => _screen10State();
// }

// class _screen10State extends State<screen10> {
//   List<Pooja> service = [
//     Pooja('Satyanarayana swamy vratham', '\$${91.00}', false, 0),
//     Pooja('Grihapravesha puja', '\$${151.00}', false, 1),
//     Pooja('Ganapathi puja', '\$${91.00}', false, 2),
//     Pooja('Namakaranam', '\$${91.00}', false, 3),
//     Pooja('Lakshmi puja', '\$${91.00}', false, 4),
//     Pooja('Sreemantham', '\$${151.00}', false, 5),
//     Pooja('Ayusha Homam', '\$${111.00}', false, 6),
//     Pooja('Punya vachanam', '\$${91.00}', false, 7),
//     Pooja('Sudarshana Homam', '\$${111.00}', false, 8),
//     Pooja('Varalakshmi vratham', '\$${91.00}', false, 9),
//     Pooja('Upanayanam', '\$${151.00}', false, 10),
//   ];
//   List<Pooja> selectedServices = List();

//   String? selectedvalue;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text(
//           'Services',
//         ),
//         centerTitle: true,
//         leading: Padding(
//             padding: const EdgeInsets.fromLTRB(10, 10, 15, 8),
//             child: Container(
//               width: 40,
//               height: 20,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(12)),
//               child: IconButton(
//                 // ignore: prefer_const_constructors
//                 icon: Icon(
//                   Icons.arrow_back_ios,
//                   color: Colors.black,
//                 ),
//                 onPressed: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => screen11()),
//                   // );
//                 },
//                 iconSize: 25.0,
//               ),
//             )),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
//             child: Container(
//               width: 40,
//               height: 20,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(12)),
//               // ignore: sort_child_properties_last
//               child: IconButton(
//                 onPressed: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => const screen19()),
//                   // );
//                 },
//                 icon: Icon(
//                   Icons.message_outlined,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),

//           // ignore: sort_child_properties_last
//           Padding(
//             padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
//             child: Container(
//               width: 38,
//               height: 20,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(12)),
//               // ignore: sort_child_properties_last
//               child: IconButton(
//                 onPressed: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => const screen18()),
//                   // );
//                 },
//                 // ignore: prefer_const_constructors
//                 icon: Icon(
//                   Icons.notifications_none,
//                   color: Colors.black,
//                 ),
//                 iconSize: 25.0,
//               ),
//             ),
//           ),
//         ],
//         flexibleSpace: Container(
//           decoration: BoxDecoration(

//               // ignore: prefer_const_literals_to_create_immutables
//               gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 255, 130, 34),
//             Color.fromARGB(255, 248, 213, 35)
//           ], begin: Alignment.bottomRight, end: Alignment.topRight)),
//         ),
//       ),
//       body: Stack(children: [
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//             color: Colors.white,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//           child: Column(children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 35,
//                     backgroundImage: AssetImage('images/image 4 (1).png'),
//                   ),
//                   SizedBox(
//                     width: 30,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Tarachand Joshi',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         '5547 W North Ave, Chicago',
//                         style: TextStyle(color: Colors.grey, fontSize: 13),
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         // ignore: prefer_const_literals_to_create_immutables
//                         children: [
//                           Text(
//                             'Telugu',
//                             style: TextStyle(
//                               color: Colors.red,
//                               backgroundColor:
//                                   Color.fromARGB(255, 252, 226, 234),
//                               fontSize: 15,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             'Tamil',
//                             style: TextStyle(
//                               color: Colors.red,
//                               backgroundColor:
//                                   Color.fromARGB(255, 252, 226, 234),
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Expanded(
//                   child: ListView.builder(
//                       shrinkWrap: true,

//                       // controller: controller,
//                       itemCount: service.length,
//                       // physics: BouncingScrollPhysics(),
//                       itemBuilder: (BuildContext context, int index) {
//                         return Pooja(
//                             service[index].poojaname,
//                             service[index].poojacharge,
//                             service[index].isSelected,
//                             index);
//                       }),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(
//                 width: double.infinity,
//                 // ignore: deprecated_member_use
//                 child: RaisedButton(
//                   color: Colors.deepOrange,
//                   onPressed: () {
//                     print('selected: ${selectedServices.length}');
//                   },
//                   child: Text(
//                     'Continue (${selectedServices.length}',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//                   ),
//                 ),
//               ),
//             )
//           ]),
//         )
//       ]),
//       backgroundColor: Color.fromARGB(255, 255, 130, 34),
//     );
//   }

//   Widget Pooja(
//       String poojaname, String poojacharge, bool isSelected, int index) {
//     return ListTile(
//       leading: isSelected
//           ? Icon(
//               Icons.check_circle_outline,
//               color: Colors.grey,
//             )
//           : Icon(
//               Icons.check_circle,
//               color: Colors.deepOrange,
//             ),
//       title: Text(
//         poojaname,
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//       trailing: Text(poojacharge),
//       onTap: () {
//         setState(() {
//           service[index].isSelected = !service[index].isSelected;
//           if (service[index].isSelected == true) {
//             selectedServices
//                 .add(Pooja(poojaname, poojacharge, isSelected, index));
//           } else if (service[index].isSelected == false) {
//             selectedServices.removeWhere(
//                 (element) => element.poojaname == service[index].poojaname);
//           }
//         });
//       },
//     );
//   }
// }



// //class Services {
// //   bool isSelected;
// //   String name, charge;
// //   int index;
// //   Services(this.isSelected, this.name, this.charge, this.index);
// // }

// // class screen10 extends StatefulWidget {
// //   const screen10({Key? key}) : super(key: key);

// //   @override
// //   State<screen10> createState() => _screen10State();
// // }

// // class _screen10State extends State<screen10> {
// //   late bool isSelected;
// //   List service = [
// //     false,
// //     'Satyanarayana swamy vratham',
// //     '\$${91.00}',
// //     false,
// //     'Grihapravesha puja',
// //     '\$${151.00}',
// //     false,
// //     'Ganapathi puja',
// //     '\$${91.00}',
// //     false,
// //     'Namakaranam',
// //     '\$${91.00}',
// //     false,
// //     'Lakshmi puja',
// //     '\$${91.00}',
// //     false,
// //     'Sreemantham',
// //     '\$${151.00}',
// //     false,
// //     'Ayusha Homam',
// //     '\$${111.00}',
// //     false,
// //     'Punya vachanam',
// //     '\$${91.00}',
// //     false,
// //     'Sudarshana Homam',
// //     '\$${111.00}',
// //     false,
// //     'Varalakshmi vratham',
// //     '\$${91.00}',
// //     false,
// //     'Upanayanam',
// //     '\$${151.00}'
// //   ];

// //   // List service = [
// //   //   'Satyanarayana swamy vratham',
// //   //   'Grihapravesha puja',
// //   //   'Ganapathi puja',
// //   //   'Namakaranam',
// //   //   'Lakshmi puja',
// //   //   'Sreemantham',
// //   //   'Ayusha Homam',
// //   //   'Punya vachanam',
// //   //   'Sudarshana Homam',
// //   //   'Varalakshmi vratham',
// //   //   'Upanayanam'
// //   // ];
// //   // List charges = [
// //   //   '\$${91.00}',
// //   //   '\$${151.00}',
// //   //   '\$${91.00}',
// //   //   '\$${91.00}',
// //   //   '\$${91.00}',
// //   //   '\$${151.00}',
// //   //   '\$${111.00}',
// //   //   '\$${91.00}',
// //   //   '\$${111.00}',
// //   //   '\$${91.00}',
// //   //   '\$${151.00}'
// //   // ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //         length: 4,
// //         child: Scaffold(
// //             appBar: AppBar(
// //               backgroundColor: Colors.transparent,
// //               elevation: 0,
// //               title: Text(
// //                 'Services',
// //               ),
// //               centerTitle: true,
// //               leading: Padding(
// //                   padding: const EdgeInsets.fromLTRB(10, 10, 15, 8),
// //                   child: Container(
// //                     width: 40,
// //                     height: 20,
// //                     decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(12)),
// //                     child: IconButton(
// //                       // ignore: prefer_const_constructors
// //                       icon: Icon(
// //                         Icons.arrow_back_ios,
// //                         color: Colors.black,
// //                       ),
// //                       onPressed: () {},
// //                       iconSize: 25.0,
// //                     ),
// //                   )),
// //               actions: [
// //                 Padding(
// //                   padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
// //                   child: Container(
// //                     width: 40,
// //                     height: 20,
// //                     decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(12)),
// //                     // ignore: sort_child_properties_last
// //                     child: IconButton(
// //                       onPressed: () {},
// //                       // ignore: prefer_const_constructors
// //                       icon: Icon(
// //                         Icons.message_outlined,
// //                         color: Colors.black,
// //                       ),
// //                       // iconSize: 25.0,
// //                     ),
// //                   ),
// //                 ),

// //                 // ignore: sort_child_properties_last
// //                 Padding(
// //                   padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
// //                   child: Container(
// //                     width: 38,
// //                     height: 20,
// //                     decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(12)),
// //                     // ignore: sort_child_properties_last
// //                     child: IconButton(
// //                       onPressed: () {},
// //                       // ignore: prefer_const_constructors
// //                       icon: Icon(
// //                         Icons.notifications_none,
// //                         color: Colors.black,
// //                       ),
// //                       iconSize: 25.0,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //               flexibleSpace: Container(
// //                 decoration: BoxDecoration(

// //                     // ignore: prefer_const_literals_to_create_immutables
// //                     gradient: LinearGradient(colors: [
// //                   Color.fromARGB(255, 255, 130, 34),
// //                   Color.fromARGB(255, 248, 213, 35)
// //                 ], begin: Alignment.bottomRight, end: Alignment.topRight)),
// //               ),
// //             ),
// //             body: Stack(children: [
// //               Container(
// //                 width: double.infinity,
// //                 child: Image(
// //                   image: AssetImage(
// //                     'images/Rectangle 21.png',
// //                   ),
// //                   fit: BoxFit.fill,
// //                 ),
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   CircleAvatar(
// //                     radius: 30,
// //                     backgroundImage: AssetImage('images/image 4 (1).png'),
// //                   ),
// //                   SizedBox(
// //                     width: 30,
// //                   ),
// //                   Column(
// //                     children: [
// //                       Text(
// //                         'Tarachand Joshi',
// //                         style: TextStyle(
// //                             color: Colors.black,
// //                             fontSize: 17,
// //                             fontWeight: FontWeight.bold),
// //                       ),
// //                       SizedBox(height: 5),
// //                       Text(
// //                         '5547 W North Ave, Chicago',
// //                         style: TextStyle(color: Colors.grey, fontSize: 13),
// //                       ),
// //                       SizedBox(height: 5),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         // ignore: prefer_const_literals_to_create_immutables
// //                         children: [
// //                           Text(
// //                             'Telugu',
// //                             style: TextStyle(
// //                               color: Colors.red,
// //                               backgroundColor:
// //                                   Color.fromARGB(255, 252, 226, 234),
// //                               fontSize: 15,
// //                             ),
// //                           ),
// //                           SizedBox(
// //                             width: 20,
// //                           ),
// //                           Text(
// //                             'Tamil',
// //                             style: TextStyle(
// //                               color: Colors.red,
// //                               backgroundColor:
// //                                   Color.fromARGB(255, 252, 226, 234),
// //                               fontSize: 15,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //               Column(
// //                 children: [
// //                   Expanded(
// //                     child: ListView.builder(
// //                         shrinkWrap: true,

// //                         // controller: controller,
// //                         itemCount: service.length,
// //                         // physics: BouncingScrollPhysics(),
// //                         itemBuilder: (BuildContext context, index) {
// //                           return Services(
// //                               service[index].isSelected,
// //                               service[index].name,
// //                               service[index].charge,
// //                               index);
// //                         }),
// //                   ),
// //                 ],
// //               )
// //             ])));
// //   }

// //   Widget Services(String name, String charge, bool isSelected, int index) {
// //     return ListTile(
// //         leading: isSelected
// //             ? Icon(
// //                 Icons.check_circle,
// //                 color: Colors.green,
// //               )
// //             : Icon(Icons.check_circle_outline, color: Colors.grey),
// //         onTap: () {
// //           setState(() {
// //             var selectedservice;
// //             service[index].isSelected = !service[index].isSelected;
// //             if (service[index].isSelected == true) {
// //               selectedservice.add(Services(isSelected, name, charge));
// //             } else if (service[index].isSelected == false) {
// //               selectedservice.removeWhere(
// //                   (element) => element.name == service[index].name);
// //             }
// //           });

// //           title:
// //           Text(name);
// //           subtitle:
// //           Text(charge,
// //               style: TextStyle(
// //                 color: Colors.red,
// //                 backgroundColor: Color.fromARGB(255, 252, 226, 234),
// //                 fontSize: 15,
// //               ));
// //         });
// //   }
// // }
// // //...................................................................................
// // //                 }), }
// // // return Container(
// // //   height: 60,
// // //   decoration: BoxDecoration(
// // //       borderRadius: BorderRadius.all(Radius.circular(10)),
// // //       color: Colors.white,
// // //       // ignore: prefer_const_literals_to_create_immutables
// // //       boxShadow: [
// // //         BoxShadow(
// // //             color: Color.fromARGB(255, 244, 242, 242),
// // //             spreadRadius: 8)
// // //       ]),
// // //                     width: double.infinity,
// // //                     // ignore: prefer_const_literals_to_create_immutables
// // //                     child: ListTile(
// // //                       leading: isSelected
// // //                           ? Icon(
// // //                               Icons.check_circle,
// // //                               color: Colors.green,
// // //                             )
// // //                           : Icon(Icons.check_circle_outline,
// // //                               color: Colors.grey),
// // //                       title: Text(service[index]),
// // //                       subtitle: Text(
// // //                         charges[index],
// // //                         style: TextStyle(
// // //                           color: Colors.red,
// // //                           backgroundColor: Color.fromARGB(255, 252, 226, 234),
// // //                           fontSize: 15,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   );
// // //                 }),
// // //           ]),
// // //           backgroundColor: Color.fromARGB(255, 255, 130, 34),
// // //         ));
// // //   }
// // // }
