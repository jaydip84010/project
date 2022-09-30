import 'package:flutter/material.dart';

class ResponsiveUi extends StatefulWidget {
  const ResponsiveUi({Key? key}) : super(key: key);

  @override
  State<ResponsiveUi> createState() => _ResponsiveUiState();
}

class _ResponsiveUiState extends State<ResponsiveUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: 500,
            width: 300,
            child: Image.asset(
              'assets/images/3d-nature-images-hd.webp',
              fit: BoxFit.fill,
            )),
        Container(
            height: 500,
            width: 300,
            child: Image.asset(
              'assets/images/flowers-276014__340.jpg',
              fit: BoxFit.fill,
            ))
      ],
    ));
  }
}
