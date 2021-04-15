import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';

import '../../mocks.dart';
import 'sight_card.dart';
//import 'sight_details.dart';

/*
* This class displays the list of interesting places on the screen
*/
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(84),
        child: Container(
          margin: const EdgeInsets.only(top: 52, left: 16),
          child: Text(
            'Список\nинтересных мест',
            style: textBoldNormalStyle32Black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SightCard(sight: mocks[0]),
            SightCard(sight: mocks[1]),
            SightCard(sight: mocks[2]),
            SightCard(sight: mocks[3]),
            SightCard(sight: mocks[4]),
          ],
        ),
      ),
    );
  }
}
