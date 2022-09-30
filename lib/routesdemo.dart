import 'package:flutter/material.dart';

class RoutesDemo extends StatefulWidget {
  const RoutesDemo({Key? key}) : super(key: key);

  @override
  State<RoutesDemo> createState() => _RoutesDemoState();
}

class _RoutesDemoState extends State<RoutesDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              height: 80,
              width: 80,
              child: Center(child: Text("Submit")),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Container(
              height: 80,
              width: 80,
              child: Center(child: Text("Submit")),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/third');
            },
            child: Container(
              height: 80,
              width: 80,
              child: Center(child: Text("Submit")),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
