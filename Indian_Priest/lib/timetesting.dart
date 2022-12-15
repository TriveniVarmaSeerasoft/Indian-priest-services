//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class timetesting extends StatefulWidget {
  const timetesting({Key? key}) : super(key: key);

  @override
  State<timetesting> createState() => _timetestingState();
}

class _timetestingState extends State<timetesting> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${time.hour}: ${time.minute}"),
          ElevatedButton(
              onPressed: () async {
                TimeOfDay? newTime =
                    await showTimePicker(context: context, initialTime: time);

                if (newTime == null) return;

                setState(() {
                  time = newTime;
                });
              },
              child: Text("Select time"))
        ],
      )),
    );
  }
}
