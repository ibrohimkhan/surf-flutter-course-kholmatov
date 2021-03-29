import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstStatefulWidget(),
    );
  }
}

// ignore: must_be_immutable
class MyFirstStatelessWidget extends StatelessWidget {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('counter = ${count++}');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  @override
  _MyFirstStatefulWidgetState createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('counter = ${count++}');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}