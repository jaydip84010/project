import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'formpage.dart';
import 'secondpage.dart';
import 'fourthpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabct;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              'Tabbar DemoPage',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            bottom: TabBar(
              controller: _tabct,
              unselectedLabelColor: Colors.red,
              labelColor: Colors.green,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pink,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/flowers-276014__340.jpg',
                      ))),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.yellowAccent,
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.home,
                    ),
                    text: "Home"),
                Tab(
                    icon: Icon(
                      Icons.search,
                    ),
                    text: "Search"),
                Tab(
                    icon: Icon(
                      Icons.person,
                    ),
                    text: "User"),
              ],
            ),
          ),
          body: TabBarView(controller: _tabct, children: [
            SecondPage(), FormPage(), FourthPage()
            // Icon(
            //   Icons.home,
            //   size: 100,
            // ),
            // Icon(
            //   Icons.search,
            //   size: 100,
            // ),
            // Icon(
            //   Icons.person,
            //   size: 100,
            // )
          ]),
        ));
  }

  @override
  void initState() {
    _tabct = TabController(length: 3, vsync: this);
    super.initState();
  }
}

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(child: Text('page 1')),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(child: Text('page 2')),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(child: Text('page 3')),
              )
            ]),
      ),
    );
  }
}
