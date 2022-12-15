// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indian_priest/screen4_5.dart';
import 'screen2.dart';
// import 'screen4_5.dart';

class screen3 extends StatefulWidget {
  @override
  State<screen3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<screen3> {
  bool securetext = true;
  bool visibility = true;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController mobilecontroller = TextEditingController();
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
                      MaterialPageRoute(builder: (context) => screen2()));
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
                padding: EdgeInsets.fromLTRB(50, 135, 50, 0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image.asset('images/Frame ().svg'),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter your information below or continue with social media account',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 35,
                      ),
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
                              emailcontroller.clear();
                            },
                            color: Colors.grey,
                          ),
                        ),
                        textInputAction: TextInputAction.next,
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
                        height: 10,
                      ),
                      TextFormField(
                        controller: mobilecontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          labelText: "Mobile Number",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 3)),
                          prefixIcon: Icon(
                            Icons.phone_android,
                            color: Colors.grey,
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(visibility ? null : Icons.clear),
                              onPressed: () {
                                mobilecontroller.clear();
                              }),
                        ),
                        maxLines: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter phone number";
                          }
                          // if (countryCode == null) {
                          //   return "select country code";
                          // }
                          if (value.length != 10) {
                            setState(() {
                              visibility = false;
                            });
                            return "enter valid phone number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
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
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 3)),
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
                              Text('Create Account',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
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
