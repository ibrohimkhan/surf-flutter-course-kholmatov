import 'package:flutter/cupertino.dart';
import 'package:places/mocks.dart';
import 'planned_to_visi_sight_card.dart';

/*
* This class displays the list of planned to visit sights on the screen
*/
class PlannedToVisitSightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: plannedToVisitSightMocks.isEmpty
          ? Center(
              child: Text('Пусто'),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  PlannedToVisitSightCard(sight: plannedToVisitSightMocks[0]),
                  PlannedToVisitSightCard(sight: plannedToVisitSightMocks[1]),
                ],
              ),
            ),
    );
  }
}
