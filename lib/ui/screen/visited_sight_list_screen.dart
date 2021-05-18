import 'package:flutter/cupertino.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/visited_sight_card.dart';

/*
* This class displays the list of visited places on the screen
*/
class VisitedSightListScreen extends StatelessWidget {
  const VisitedSightListScreen({Key? key, required this.isDarkMode})
      : super(key: key);

  final bool isDarkMode;

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
                  VisitedSightCard(
                    sight: visitedSightMocks[0],
                    isDarkMode: this.isDarkMode,
                  ),
                  VisitedSightCard(
                    sight: visitedSightMocks[1],
                    isDarkMode: this.isDarkMode,
                  ),
                  VisitedSightCard(
                    sight: visitedSightMocks[2],
                    isDarkMode: this.isDarkMode,
                  ),
                ],
              ),
            ),
    );
  }
}
