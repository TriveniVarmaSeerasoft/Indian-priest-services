// ignore_for_file: prefer_const_constructors
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indian_priest/controller/signUpController.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  signUpController signupController = Get.put(signUpController());
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  // signUpController signupController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(alignment: Alignment.center, children: [
        Obx(
          () => CircleAvatar(
            backgroundImage: signupController.isProfilPicPathSet.value == true
                ? FileImage(File(signupController.profilePicPath.value))
                    as ImageProvider
                : AssetImage('images/image 4 (6)'),
            radius: 80,
          ),
        ),
        Positioned(
            bottom: 0,
            child: InkWell(
              child: Icon(Icons.camera),
              onTap: (() {
                print('camera clicked');
                showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomSheet(context));
              }),
            ))
      ]),
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          Text(
            'choose profile photo',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.image),
                      Text('gallery',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple))
                    ]),
                onTap: () {
                  takePhoto(ImageSource.gallery);

                  // print('gallery');
                },
              ),
              const SizedBox(
                width: 80,
              ),
              InkWell(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.camera),
                    SizedBox(
                      height: 5,
                    ),
                    Text('camera',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                  // print('camera');
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    signupController.setProfileImagePath(pickedFile!.path);
    // print(pickedFile);
  }
}
