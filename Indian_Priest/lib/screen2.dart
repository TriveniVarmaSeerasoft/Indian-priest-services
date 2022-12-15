// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indian_priest/screen3.dart';
import 'screen1.dart';

class screen2 extends StatefulWidget {
  @override
  State<screen2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<screen2> {
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
                  'images/Vector (8).svg',
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
                        child: Image.asset('images/Frame (3).svg'),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
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
                            'You need Priest Services Account to use and manage Services. Please select the link below and continue',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screen3()));
                        },
                        child: Container(
                          height: 65,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(255, 251, 105, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(21, 255, 60, 0)),
                          child: const Text(
                            'I am a New user',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 251, 105, 1),
                                fontWeight: FontWeight.w700),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
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
                                                      screen2()));
                                        },
                                        child: Text('OK'),
                                      )
                                    ],
                                  ));
                        },
                        child: Container(
                          height: 65,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(255, 0, 140, 255),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(39, 0, 139, 253)),
                          child: const Text(
                            'I am a Priest',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 140, 255),
                                fontWeight: FontWeight.w700),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
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
                                                      screen2()));
                                        },
                                        child: Text('OK'),
                                      )
                                    ],
                                  ));
                        },
                        child: Container(
                          height: 65,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(255, 0, 143, 5),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(32, 0, 255, 8)),
                          child: const Text(
                            'I want to add Temple',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 143, 5),
                                fontWeight: FontWeight.w700),
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
}
