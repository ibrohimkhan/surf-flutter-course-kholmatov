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
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 84,
        backgroundColor: Colors.transparent,
        title: Text(
          'Список\nинтересных мест',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 32,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(child: Text("Hello!")),
    );
  }
}
