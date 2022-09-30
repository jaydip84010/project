import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/file_pick_demo.dart';

import 'formpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: FilePickDemo()
        // MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(
        //         create: (_) => Counter(),child:ProviderDemo()),
        //   ],
        //   child: ProviderDemo(),
        // ),
        ),
  );
}

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.person_add_alt_1,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              accountName: Text('jaydip'),
              accountEmail: Text('jaydip1234@gmail.com')),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.red,
          //   child: Row(
          //     children: [
          //       SizedBox(
          //         width: 20,
          //       ),
          //       ClipOval(
          //         child: Icon(
          //           Icons.person,
          //           size: 20,
          //           color: Colors.white,
          //         ),
          //       ),
          //       SizedBox(
          //         width: 15,
          //       ),
          //       Text(
          //         'userprofile@gmail.com',
          //         style: TextStyle(
          //             fontWeight: FontWeight.w400,
          //             color: Colors.white,
          //             fontSize: 15),
          //       )
          //     ],
          //   ),
          // ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text(
              'data 1',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text(
              'data 2',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text(
              'data 3',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FormPage()));
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.access_time_filled,
              color: Color(0xffffc0cb),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Demo App'),
          ],
        ),
        titleSpacing: 2.0,
        titleTextStyle: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 25,
            color: Color(0xffffc0cb)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10, 20),
                padding: EdgeInsets.only(left: 5),
                height: 100,
                width: 100,
                child: Center(
                    child: Text(
                  'Hello world !',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.green,
                    border: Border(
                        left: BorderSide(
                            style: BorderStyle.solid,
                            width: 2,
                            color: Colors.black),
                        bottom: BorderSide(
                            style: BorderStyle.solid,
                            width: 2,
                            color: Colors.black))),
                constraints: BoxConstraints(
                    minHeight: 60, minWidth: 80, maxHeight: 60, maxWidth: 80),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'abcd ',
                    style: TextStyle(
                        wordSpacing: 10,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.orange)),
                TextSpan(
                    text: 'abcd ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.blue)),
                TextSpan(
                    text: ' abcd',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.pink))
              ])),
              Text.rich(TextSpan(children: [
                TextSpan(text: 'def '),
                TextSpan(text: 'def '),
                TextSpan(text: 'def ')
              ])),
              SizedBox(
                height: 15,
              ),
              Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/flowers-276014__340.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.green,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator(),
              //circulaprogress
              LinearProgressIndicator(),
              SizedBox(
                height: 15,
              ),
              //linearprogress

              InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Hello flutter",
                      fontSize: 20,
                      gravity: ToastGravity.CENTER,
                      textColor: Colors.white,
                      backgroundColor: Colors.green);
                },
                child: Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'Toaster',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ), //flutter toaster
            ],
          ),
        ),
      ),
    );
  }
}
