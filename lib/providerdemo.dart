import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({Key? key}) : super(key: key);

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () => context.read<Counter>().increase(),
              child: Container(
                height: 40,
                width: 40,
                color: Colors.blue,
                child: Center(
                    child: Text(
                  '+',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('${context.watch<Counter>().count}'),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => context.read<Counter>().decrease(),
              child: Container(
                height: 40,
                width: 40,
                color: Colors.blue,
                child: Center(
                    child: Text(
                  '-',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('${context.watch<Counter>().count}'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProviderSecondsScreen()));
                },
                child: Center(child: Text('NextScreen')))
          ],
        ),
      )),
    );
  }
}

class Counter with ChangeNotifier {
  int value = 0;

  int get count => value;

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}

class ProviderSecondsScreen extends StatefulWidget {
  const ProviderSecondsScreen({Key? key}) : super(key: key);

  @override
  State<ProviderSecondsScreen> createState() => _ProviderSecondsScreenState();
}

class _ProviderSecondsScreenState extends State<ProviderSecondsScreen> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Counter(),
      child: Scaffold(
        body: Center(
          child: Text('${context.watch<Counter>().count}'),
        ),
      ),
    );
  }
}
