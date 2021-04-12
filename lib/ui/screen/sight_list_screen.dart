import 'package:flutter/material.dart';

/*
* This class displays the list of interesting places on the screen
*/
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Center(child: Text("Hello!")),
    );
  }
}