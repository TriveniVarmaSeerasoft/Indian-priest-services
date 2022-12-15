import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double height = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Text('Height: ${height}'),
          Slider(
              value: height.toDouble(),
              max: 20,
              min: 8,
              onChanged: (double value) {
                height = value;
                setState(() {});
              }),
          ElevatedButton(
              child: Text('press here'),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          height: 100,
                          child: Center(child:
                              StatefulBuilder(builder: ((context, state) {
                            return Slider(
                                value: height.toDouble(),
                                max: 20,
                                min: 8,
                                onChanged: (double value) {
                                  height = value;
                                  state(() {});
                                  setState(() {});
                                });
                          }))));
                    });
              })
        ]));
  }
}
