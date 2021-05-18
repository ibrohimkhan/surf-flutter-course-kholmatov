import 'package:flutter/material.dart';
import 'res/colors.dart';
import 'res/text_styles.dart';

import '../../mocks.dart';
import 'sight_card.dart';
import 'sight_details.dart';

/*
* This class displays the list of interesting places on the screen
*/
class SightListScreen extends StatefulWidget {
  SightListScreen({Key? key, required this.isDarkMode}) : super(key: key);

  bool isDarkMode;

  @override
  State<StatefulWidget> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: widget.isDarkMode ? dmPrimaryColor : lmPrimaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(84),
        child: Container(
          margin: const EdgeInsets.only(top: 52, left: 16),
          child: Text(
            'Список\nинтересных мест',
            style: widget.isDarkMode
                ? textBoldNormalStyle32White
                : textBoldNormalStyle32Black,
          ),
        ),
      ),
      body: SightDetails(sight: mocks[0]),/* SingleChildScrollView(
        child: Column(
          children: [
            SightCard(sight: mocks[0], isDarkMode: widget.isDarkMode),
            SightCard(sight: mocks[1], isDarkMode: widget.isDarkMode),
            SightCard(sight: mocks[2], isDarkMode: widget.isDarkMode),
            SightCard(sight: mocks[3], isDarkMode: widget.isDarkMode),
            SightCard(sight: mocks[4], isDarkMode: widget.isDarkMode),
          ],
        ),
      ),*/
    );
  }
}
