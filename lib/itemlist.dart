import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key})
      : super(
          key: key,
        );

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Model> item = [
    Model(
        id: 1,
        title: "flutter List items",
        subtitle: "hello welcome to flutter world."),
    Model(
        id: 2,
        title: "flutter List items",
        subtitle: "hello welcome to flutter world."),
    Model(
        id: 3,
        title: "flutter List items",
        subtitle: "hello welcome to flutter world."),
    Model(
        id: 4,
        title: "flutter List items",
        subtitle: "hello welcome to flutter world."),
    Model(
        id: 5,
        title: "flutter List items",
        subtitle: "hello welcome to flutter world.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, int index) {
                return ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(height: 5,),
                    ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      tileColor: Colors.blue,
                      leading: Text(
                        "${item[index].id}",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      title: Text(
                        '${item[index].title}',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        '${item[index].subtitle}',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.red,
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
