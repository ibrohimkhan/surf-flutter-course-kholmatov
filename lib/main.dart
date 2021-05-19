
import 'package:flutter/material.dart';
import 'ui/screen/res/themes.dart';
import 'ui/screen/sight_list_screen.dart';
import 'ui/screen/visiting_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  var isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demmo',
      theme: isDarkMode ? darkTheme : lightTheme,
      home: SightListScreen(isDarkMode: isDarkMode),//VisitingScreen(isDarkMode: isDarkMode), /*SightListScreen(),*/
    );
  }
}