import 'package:flutter/material.dart';
import 'planned_to_visit_sight_list_screen.dart';
import 'res/colors.dart';
import 'res/text_styles.dart';
import 'visited_sight_list_screen.dart';

/*
*  This class displays the list of visited places and desired places
*/
class VisitingScreen extends StatefulWidget {
  VisitingScreen({Key? key, required this.isDarkMode}) : super(key: key);

  bool isDarkMode;

  @override
  State<StatefulWidget> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isDarkMode ? dmPrimaryColor : lmPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Избранное',
          style: widget.isDarkMode
              ? textMediumNormalStyle18MainWhite
              : textMediumNormalStyle18Main,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: CustomTab(
            tabController: tabController,
            isDarkMode: widget.isDarkMode,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabController.index,
        onTap: (currentIndex) {
          tabController.animateTo(currentIndex);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.two_wheeler_rounded), label: ''),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          PlannedToVisitSightListScreen(
            isDarkMode: widget.isDarkMode,
          ),
          VisitedSightListScreen(
            isDarkMode: widget.isDarkMode,
          ),
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  CustomTab({
    Key? key,
    required this.tabController,
    required this.isDarkMode,
  }) : super(key: key);

  final TabController tabController;
  bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isDarkMode ? dmPrimaryColorDark : lmPrimaryColorLight,
      ),
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            text: 'Хочу посетить',
          ),
          Tab(
            text: 'Посетил',
          ),
        ],
      ),
    );
  }
}
