import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  bool val1 = false;
  bool val2 = false;
  bool data = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 200),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/3d-nature-images-hd.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                  );
                }),
          ),
          Row(
            children: [
              Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: val1,
                  onChanged: (val) {
                    setState(() {
                      val1 = val!;
                    });
                  }),
              Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                  value: val2,
                  onChanged: (val) {
                    setState(() {
                      val2 = val!;
                    });
                  }),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              setState(() {
                data = !data;
              });
            },
            child: Container(
              height: 70,
              width: 100,
              color: data ? Colors.green : Colors.pink,
              child: data ? Text('submit') : Text('ok'),
            ),
          )
        ],
      ),
    );
  }
}
