// ignore_for_file: prefer_const_constructors, unused_field, prefer_interpolation_to_compose_strings, prefer_final_fields, no_leading_underscores_for_local_identifiers
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:indian_priest/screen14.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/cupertino/date_picker.dart';

class screen111213 extends StatefulWidget {
  const screen111213({Key? key}) : super(key: key);

  @override
  State<screen111213> createState() => _screen111213State();
}

class _screen111213State extends State<screen111213> {
  List username = [
    'Tarachand Joshi',
    'Krishna Murthy',
    'Sundar Natarajan',
    'Ramana Murthy',
    'Purushothamacharya'
  ];

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
  // .......................................................
  int currentHours = 0;
  late TimeOfDay time;

  // ........................

  // .......................................................
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
// .................................................
  DateTime _dateTime = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  String selectedTime = 'selectedTime';
  late TimeOfDay _timePicked;
  Future<Null> selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: _time);
    if (picked != null) {
      setState(() {
        _time = picked;

        print(_time);
      });
    }
  }
// .................................................
  // int currentHour = 0;

  late FixedExtentScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

// ...........................................................

  // ignore: prefer_final_fields
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _show() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        selectedTime = result.format(context);
      });
    }
  }

  int? selectedvalue;

  @override
  Widget build(BuildContext context) {
    final Object? todo1 = ModalRoute.of(context)!.settings.arguments;
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
            FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString("jsonfile/priestfile.json"),
                builder: (context, data) {
                  var showData = json.decode(data.data.toString());
                  return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: username.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            var users;

                            return SingleChildScrollView(
                              child: Column(children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const screen14(),
                                          settings: RouteSettings(
                                            arguments: showData[index]['name'],
                                          )),
                                    );
                                    setState(() {
                                      selectedvalue = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                'images/image 4 (1).png'),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                // todo1.toString(),
                                                showData[index]['name']
                                                    .toString(),
                                                // 'Tarachand Joshi',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                showData[index]['address']
                                                    .toString(),
                                                // '5547 W North Ave, Chicago',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13),
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Color.fromARGB(
                                                            39, 249, 157, 198)),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
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
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Color.fromARGB(
                                                            39, 249, 157, 198)),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
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
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Icon(
                                            Icons.check_circle,
                                            color: Colors.deepOrange,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            todo1.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(width: 100),
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
                                          child: Container(
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
                                                //  todo.toString(),
                                                showData[index]['charges']
                                                    .toString(),
                                                // .toString(),
                                                // '\$${91.00}',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.home,
                                          color:
                                              Color.fromARGB(255, 19, 139, 23),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Select Address',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 19, 139, 23),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(width: 15),
                                        // ignore: deprecated_member_use
                                        FlatButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              side: BorderSide(
                                                  color: Colors.white)),
                                          onPressed: () {},
                                          child: Text(
                                            'Change Address',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          color: Color.fromARGB(
                                              255, 242, 240, 240),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '14305 Ingleside Ave, Dolton, IL 60419, United States',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(
                                          Icons.message_rounded,
                                          color:
                                              Color.fromARGB(255, 19, 139, 23),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Add Notes',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 19, 139, 23),
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    TextFormField(
                                      minLines: 3,
                                      maxLines: 10,
                                      decoration: InputDecoration(
                                        hintText: 'Add notes here',
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                                color: Colors.orange,
                                                width: 2)),
                                      ),
                                      keyboardType: TextInputType.multiline,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Select Date & Time',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 19, 139, 23),
                                          fontSize: 17),
                                    ),
                                    Column(children: [
                                      TextFormField(
                                        controller: _dateController,
                                        decoration: InputDecoration(
                                            labelText: 'Select Date',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.orange,
                                                    width: 2)),
                                            suffixIcon: Icon(
                                              Icons.calendar_month_outlined,
                                              color: Colors.orange,
                                            )),
                                        onTap: () async {
                                          DateTime? pickeddate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime(2050),
                                            builder: (context, child) {
                                              return Theme(
                                                data:
                                                    Theme.of(context).copyWith(
                                                  colorScheme:
                                                      ColorScheme.light(
                                                    primary: Colors
                                                        .orange, // <-- SEE HERE
                                                    onPrimary: Colors
                                                        .white, // <-- SEE HERE
                                                    onSurface: Colors
                                                        .black, // <-- SEE HERE
                                                  ),
                                                  textButtonTheme:
                                                      TextButtonThemeData(
                                                    style: TextButton.styleFrom(
                                                      primary: Colors
                                                          .orange, // button text color
                                                    ),
                                                  ),
                                                ),
                                                child: child!,
                                              );
                                            },
                                          );
                                          if (pickeddate != null) {
                                            setState(() {
                                              _dateController.text =
                                                  DateFormat('dd-MM-yyyy')
                                                      .format(pickeddate);
                                            });
                                          }
                                        },
                                        keyboardType: TextInputType.none,
                                      ),
                                    ]),
                                    SizedBox(height: 10),
                                    TextFormField(
                                        keyboardType: TextInputType.none,
                                        controller: _timeController,
                                        decoration: InputDecoration(
                                            labelText: 'Select time',

                                            // hintText: (_dateTime.toString()),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.orange,
                                                    width: 2)),
                                            suffixIcon: IconButton(
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.vertical(
                                                                  top: Radius
                                                                      .circular(
                                                                          30))),
                                                      // isScrollControlled: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        return SizedBox(
                                                            height: 400,
                                                            child: Container(
                                                              // color: Colors.orange,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        50,
                                                                        20,
                                                                        0,
                                                                        0),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      // ignore: prefer_const_literals_to_create_immutables
                                                                      children: [
                                                                        Text(
                                                                          'Select Time',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                19,
                                                                                139,
                                                                                23),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                            width:
                                                                                150),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {
                                                                            // Navigator.push(
                                                                            //   context,
                                                                            //   MaterialPageRoute(
                                                                            //       builder:
                                                                            //           (context) =>
                                                                            //               const screen12_13_14()),
                                                                            // );
                                                                          },
                                                                          icon:
                                                                              Icon(
                                                                            Icons.cancel_outlined,
                                                                            color:
                                                                                Colors.grey,
                                                                            size:
                                                                                25,
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    Divider(),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    // ....................hours.............................
                                                                    Container(
                                                                      width:
                                                                          350,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            200,
                                                                        // width: 100,
                                                                        child: CupertinoDatePicker(
                                                                            initialDateTime: _dateTime,
                                                                            mode: CupertinoDatePickerMode.time,
                                                                            use24hFormat: false,
                                                                            onDateTimeChanged: (dateTime) {
                                                                              print(dateTime);
                                                                              setState(() {
                                                                                _timeController.text = dateTime.toString();
                                                                              });
                                                                            }),
                                                                      ),
                                                                    ),
                                                                    Center(
                                                                      child: MaterialButton(
                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                                          elevation: 5.0,
                                                                          minWidth: 200.0,
                                                                          height: 35,
                                                                          color: Colors.deepOrange,
                                                                          onPressed: () {
                                                                            setState(() {
                                                                              _timeController.text = _time.format(context).toString();
                                                                            });

                                                                            // _dateTime
                                                                            //     .toString();
                                                                            // Text(
                                                                            //     '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}\n${_dateTime.hour}:${_dateTime.minute}');
                                                                          },
                                                                          child: Text(
                                                                            'confirm',
                                                                            style: TextStyle(
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white),
                                                                          )),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ));
                                                      });
                                                },
                                                icon: Icon(
                                                  Icons.access_time,
                                                  color: Colors.orange,
                                                ))),
                                        onTap: () async {
                                          setState(() {
                                            // selectTime(context);
                                            // Text(selectedTime);

                                            // if (_dateTime == null) {
                                            //   return 'Select time';
                                            // } else {
                                            //   return '${_dateTime.year}/${_dateTime.month}/${_dateTime.day}';
                                            // }
                                            //     DateTime? pickeddate = await showDatePicker(
                                            //     context: context,
                                            //     initialDate: DateTime.now(),
                                            //     firstDate: DateTime(1920),
                                            //     lastDate: DateTime.now());
                                            // if (pickeddate != null) {
                                            //   setState(() {
                                            //     _dateController.text =
                                            //         DateFormat('dd-MM-yyyy').format(pickeddate);
                                            // return '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}\n${_dateTime.hour}:${_dateTime.minute}';
                                          });
                                        }),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // ignore: deprecated_member_use
                                        MaterialButton(
                                          onPressed: () {
                                            //  Navigator.push(context,
                                            //       MaterialPageRoute(builder: (context) => screen2()));
                                          },
                                          color: Colors.grey,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 17),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                                  builder: (context) =>
                                                      screen14(),
                                                  settings: RouteSettings(
                                                    arguments: service[index],
                                                  ),
                                                ));
                                          },
                                          color: Colors.deepOrange,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 19, horizontal: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Text('Confirm Booking',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                )
                              ]),
                            );
                          }));
                })
          ]),
          backgroundColor: Color.fromARGB(255, 255, 130, 34),
        ));
  }
}

class Minutes extends StatelessWidget {
  int mins;
  Minutes({required this.mins});
  // const Minutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          mins < 10 ? '0' + mins.toString() : mins.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Hours extends StatelessWidget {
  int hours;
  Hours({required this.hours});
  // const Minutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          hours.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class AmPm extends StatelessWidget {
  final bool isItAm;
  AmPm({required this.isItAm});
  // const Minutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          isItAm == true ? 'am' : 'pm',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Event {
  final String title;
  Event({required this.title});
  String toString() => this.title;
}
