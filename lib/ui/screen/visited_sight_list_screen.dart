import 'package:flutter/cupertino.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/visited_sight_card.dart';

/*
* This class displays the list of visited places on the screen
*/
class VisitedSightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: visitedSightMocks.isEmpty
          ? Center(
              child: Text('Пусто'),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  VisitedSightCard(sight: visitedSightMocks[0]),
                  VisitedSightCard(sight: visitedSightMocks[1]),
                  VisitedSightCard(sight: visitedSightMocks[2]),
                ],
              ),
            ),
    );
  }
}
