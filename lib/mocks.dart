import 'package:places/domain/planned_to_visit_sight.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/visited_sight.dart';

final mocks = <Sight>[
  Sight(
    name: 'Dushanbe',
    details: 'Capital of Tajikistan',
    url: 'https://youimg1.tripcdn.com/target/0100n12000860qwng1154_C_760_506.jpg',
  ),
  Sight(
    name: 'Moscow',
    details: 'Capital of Russia',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTntca3N1y18Jd4Yb7HygYwKpup_DtGmLoD2g&usqp=CAU',
  ),
  Sight(
    name: 'Tashkent',
    details: 'Capital of Uzbekistan',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgVmPefe7QFPwpWV8-TXQDzl0sJLM67E_RpA&usqp=CAU',
  ),
  Sight(
    name: 'Ankara',
    details: 'Capital of Turkey',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJaGJKDFtY6UNIK9a03hU1HSSdcsOvYE5OAA&usqp=CAU',
  ),
  Sight(
    name: 'Abu Dhabi',
    details: 'Capital of UAE',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_1H6Jx1NMVSkuKFeVEWtsSpiWsHdn5CuwtQ&usqp=CAU',
  ),
];

final visitedSightMocks = <VisitedSight> [
  VisitedSight(
    name: 'Dushanbe',
    details: 'Capital of Tajikistan',
    url: 'https://youimg1.tripcdn.com/target/0100n12000860qwng1154_C_760_506.jpg',
  ),
  VisitedSight(
    name: 'Moscow',
    details: 'Capital of Russia',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTntca3N1y18Jd4Yb7HygYwKpup_DtGmLoD2g&usqp=CAU',
  ),
  VisitedSight(
    name: 'Tashkent',
    details: 'Capital of Uzbekistan',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgVmPefe7QFPwpWV8-TXQDzl0sJLM67E_RpA&usqp=CAU',
  ),
];

final plannedToVisitSightMocks = <PlannedToVisitSight> [
  PlannedToVisitSight(
    name: 'Ankara',
    details: 'Capital of Turkey',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJaGJKDFtY6UNIK9a03hU1HSSdcsOvYE5OAA&usqp=CAU',
  ),
  PlannedToVisitSight(
    name: 'Abu Dhabi',
    details: 'Capital of UAE',
    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_1H6Jx1NMVSkuKFeVEWtsSpiWsHdn5CuwtQ&usqp=CAU',
  ),
];