import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toggle_switch/toggle_switch.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ToggleSwitch(
          inactiveBgColor: Color.fromARGB(255, 209, 208, 208),
          labels: ['North India', 'South India'],
          fontSize: 15,
          minHeight: 30,
          minWidth: 130,
          activeBgColor: [Color.fromARGB(255, 247, 199, 215)],
          activeFgColor: Color.fromARGB(255, 246, 26, 10),
        ));
  }
}
