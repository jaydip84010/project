import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimDEmo extends StatefulWidget {
  const RiveAnimDEmo({Key? key}) : super(key: key);

  @override
  State<RiveAnimDEmo> createState() => _RiveAnimDEmoState();
}

class _RiveAnimDEmoState extends State<RiveAnimDEmo> {
  RiveAnimationController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'assets/images/flowers-276014__340.jpg',
          artboard: "sded",
          controllers: [OneShotAnimation('shsh', autoplay: true, mix: 2)],
        ),
      ),
    );
  }
}
