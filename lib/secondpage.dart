import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AlertDialog(
              title: Text('Alert Dialog'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              actions: [
                TextButton(onPressed: () {}, child: Text('Ok')),
                TextButton(onPressed: () {}, child: Text('Cancel'))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SimpleDialog(
              title: Text('Simple Dialog'),
              children: [
                Center(child: Text('abc')),
                Center(child: Text('def'))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Expanded(
                        child: AlertDialog(
                          title: Text('Alert Dialog'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          actions: [
                            TextButton(onPressed: () {}, child: Text('Ok')),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel'))
                          ],
                        ),
                      );
                    });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              children: [
                Image.asset(
                  'assets/images/3d-nature-images-hd.webp',
                  height: 200,
                  width: 200,
                ),
                Image.asset(
                  'assets/images/3d-nature-images-hd.webp',
                  height: 200,
                  width: 200,
                ),
                Image.asset(
                  'assets/images/3d-nature-images-hd.webp',
                  height: 200,
                  width: 200,
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
