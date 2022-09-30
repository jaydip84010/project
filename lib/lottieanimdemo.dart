import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimDemo extends StatefulWidget {
  const LottieAnimDemo({Key? key}) : super(key: key);

  @override
  State<LottieAnimDemo> createState() => _LottieAnimDemoState();
}

class _LottieAnimDemoState extends State<LottieAnimDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Lottie.network('https://assets8.lottiefiles.com/packages/lf20_TmewUx.json',fit: BoxFit.fill),
        ),
      ),
    );
  }
}
