// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unnecessary_null_comparison
import 'dart:io';
// import 'dart:html';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indian_priest/screen22.dart';
import 'package:indian_priest/screen24.dart';

import 'screen1.dart';
// import 'screen19.dart';
import 'screen20.dart';
// import 'screen22.dart';
import 'screen23.dart';
// import 'screen24.dart';
import 'screen6_7_8.dart';

class screen21 extends StatefulWidget {
  const screen21({super.key});

  @override
  State<screen21> createState() => _screen21State();
}

class _screen21State extends State<screen21> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
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
            'My Profile',
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
                    MaterialPageRoute(builder: (context) => screen6_7_8()));
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
                  Container(
                    width: 39,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    // ignore: sort_child_properties_last
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => screen20()));
                      },
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                      onPressed: () {
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
                                                    screen21()));
                                      },
                                      child: Text('OK'),
                                    )
                                  ],
                                ));
                      },
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
                      children: [
                        Center(
                          child: Stack(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 80.0,
                                // backgroundImage: _imageFile == null
                                //     ? AssetImage("images/image 4 (16).png")
                                //     : FileImage((File(_imageFile.path)))
                                //         as ImageProvider,
                                // backgroundImage: _imageFile == null
                                //     ? AssetImage("images/image 4 (16).png")
                                //     : FileImage(File(_imageFile.path)),
                                backgroundImage:
                                    AssetImage("images/image 4 (16).png"),
                              ),
                              Positioned(
                                  bottom: 20.0,
                                  right: 20.0,
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: ((builder) => bottomSheet()),
                                      );
                                    },
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.deepOrange,
                                      size: 28.0,
                                    ),
                                  )),
                            ],
                          ),
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
                    Column(
                      children: [
                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'My Bookings',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => screen24()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 20,
                                  ))
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
                                'Settings',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => screen22()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 20,
                                  ))
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
                                'Add Card',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                  onPressed: () {
                                    // final snackBar =
                                    //     SnackBar(content: Text('Coming Soon'));
                                    // ScaffoldMessenger.of(context)
                                    //     .showSnackBar(snackBar);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => screen23()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 98, 42),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => screen1()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "choose profile photo",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 20,
          ),
          // ignore: deprecated_member_use
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera),
                  label: Text("camera")),
              // ignore: deprecated_member_use
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text("Gallery")),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile!;
    });
  }
}
