// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(

            // ignore: prefer_const_literals_to_create_immutables
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 130, 34),
          Color.fromARGB(255, 248, 213, 35)
        ], begin: Alignment.bottomRight, end: Alignment.topRight)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
                // ignore: sort_child_properties_last
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  // Image.asset('assets/images/Asset 2@4x 1.png'),
                  AnimatedImage(),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCrossFade(
                          firstChild: SvgPicture.asset('images/Vector (5).svg'),
                          secondChild: SvgPicture.asset('images/Group 1.svg'),
                          crossFadeState: _first
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: const Duration(seconds: 8)),
                    ],
                  )
                ])));
  }
}

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  State<AnimatedImage> createState() => _AnimationState();
}

class _AnimationState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();
  late Animation _animation;

  // ignore: prefer_final_fields
  late Animation<Offset> _animatedImage = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.14),
  ).animate(_controller);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animatedImage,
      child: Image.asset('images/Asset 2@4x 1.png'),
    );
  }
}
