import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({Key? key}) : super(key: key);

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  late Future<Model1> data;

  @override
  void initState() {
    super.initState();
    data = getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Model1>(
            future: getdata(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [Text(snapshot.data!.title,style: TextStyle(fontWeight:FontWeight.bold ),)],
                );
              } else if (snapshot.hasError) {
                return Column(
                  children: [
                    Text('${snapshot.error}'),
                  ],
                );
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}

Future<Model1> getdata() async {
  final response = await http
      .get(Uri.parse('https://djohnsoft.xyz/timeline/public/api/signUp'));
  if (response.statusCode == 200) {
    return Model1.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('not found data');
  }
}
