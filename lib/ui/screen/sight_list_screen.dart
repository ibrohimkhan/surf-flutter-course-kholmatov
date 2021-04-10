import 'package:flutter/material.dart';

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