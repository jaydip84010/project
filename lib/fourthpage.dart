import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, int index) {
            return ListTile(
              style: ListTileStyle.drawer,
              leading: Icon(Icons.star),
              title: Text(
                'Demo Title',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              subtitle: Text(
                'This is flutter List view demo',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    color: Colors.black),
              ),tileColor: Colors.green,
              trailing: Icon(Icons.add),visualDensity: VisualDensity.compact,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            );
          }),
    );
  }
}
