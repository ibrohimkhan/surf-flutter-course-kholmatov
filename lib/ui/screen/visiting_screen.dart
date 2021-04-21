import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';
import 'planned_to_visit_sight_list_screen.dart';
import 'visited_sight_list_screen.dart';

/*
*  This class displays the list of visited places and desired places
*/
class VisitingScreen extends StatefulWidget {
  VisitingScreen({Key? key}) : super(key: key);

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Избранное',
          style: textMediumNormalStyle18Main,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: CustomTab(tabController: tabController),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF3B3E5B),
        unselectedItemColor: Colors.grey,
        currentIndex: tabController.index,
        onTap: (currentIndex) {
          tabController.animateTo(currentIndex);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.two_wheeler_rounded), label: ''),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          PlannedToVisitSightListScreen(),
          VisitedSightListScreen(),
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  CustomTab({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xffcef4f4f8),
      ),
      child: TabBar(
        controller: tabController,
        unselectedLabelColor: Colors.grey,
        indicator: BoxDecoration(
          color: Color(0xFF3B3E5B),
          borderRadius: BorderRadius.circular(100),
        ),
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
