import 'dart:convert';

import 'package:flutter/material.dart';
import 'model.dart';
import 'package:http/http.dart' as http;

class ListApi extends StatefulWidget {
  const ListApi({Key? key}) : super(key: key);

  @override
  State<ListApi> createState() => _ListApiState();
}

class _ListApiState extends State<ListApi> {
  late List<Model2> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView.builder(itemBuilder: (context, int index) {
        return ListView(
          children: [
            ListTile(
              title: Text(''),
            )
          ],
        );
      })),
    );
  }

  @override
  void initState() {
    super.initState();
    data = getdata() as List<Model2>;
  }

  Future<Model2> getdata() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return Model2.fromJson(json.decode(response.body));
    }
    return null!;
  }
}
