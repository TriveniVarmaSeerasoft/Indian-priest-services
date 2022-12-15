// ignore_for_file: camel_case_types, prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:indian_priest/screen2.dart';
import 'package:indian_priest/screen4.dart';
import 'package:indian_priest/screen4_5.dart';

// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:indian_priest_service/screen2.dart';
// import 'package:indian_priest_service/screen4.dart';

class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<screen1> {
  bool securetext = true;
  bool visibility = true;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 255, 189, 58),
        Color.fromARGB(255, 255, 132, 2)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Center(
          child: SingleChildScrollView(
        child: Stack(children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset('images/Asset 2@4x 1 (2).png')),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 95, 8, 0),
            child: Image.asset('images/Vector.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 120, 50, 0),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset('images/priest logo.png'),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome back!',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Please login to continue',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )),
                  // SizedBox(
                  //   height: 20,
                  // ),

                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.black),
                      // hintText: "Enter Email",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(color: Colors.orange, width: 3)),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(visibility ? null : Icons.clear),
                        onPressed: () {
                          // apicall;
                          // emailcontroller.clear();
                        },
                        color: Colors.grey,
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    // onFieldSubmitted: (value) {
                    //   // apicall();
                    // },
                    // onEditingComplete: () {
                    //   FocusScope.of(context).requestFocus(passordfocus);
                    // },
                    maxLines: 1,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z-]+[.]+[a-zA-Z]+[a-zA-Z]")
                              .hasMatch(value)) {
                        setState(() {
                          visibility = false;
                        });
                        if (value.isNotEmpty) {
                          return ('Please enter valid email id ');
                        }
                        return "enter email id";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      // hintText: "Password",
                      // hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey, width: 3)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(color: Colors.orange, width: 3)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(securetext
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                        onPressed: () {
                          setState(() {
                            securetext = !securetext;
                          });
                        },
                        color: Colors.grey,
                      ),
                    ),
                    obscureText: securetext,
                    obscuringCharacter: "*",
                    maxLines: 1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      } else if (value.length < 8) {
                        return "enter valid Password";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => screen4_5()));
                      } else {
                        print('error');
                      }
                    },
                    color: Color.fromARGB(255, 255, 123, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             forgrotpasswordscreen()));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 123, 0),
                            fontSize: 15),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Or Continue with Social Accounts',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: MaterialButton(
                          onPressed: () async {
                            //googleLogin();
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset(
                                  'images/google-logo-png.png',
                                  height: 25,
                                  width: 25,
                                )
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
                          onPressed: () async {
                            //googleLogin();
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset(
                                  'images/Facebook-logo.png',
                                  width: 25,
                                  height: 25,
                                )
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
                          onPressed: () async {
                            //googleLogin();
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset(
                                  'images/Apple-Logo.png',
                                  height: 25,
                                  width: 25,
                                )
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
                          onPressed: () async {
                            //googleLogin();
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset(
                                  'images/twitter-logo.png',
                                  height: 25,
                                  width: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => screen2()));
                          },
                          child: Text('Create Now',
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 15)))
                    ],
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
