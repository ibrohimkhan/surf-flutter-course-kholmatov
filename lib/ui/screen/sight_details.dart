import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/res/colors.dart';

import 'res/text_styles.dart';

/*
* This class displays detail information about sight
*/
class SightDetails extends StatelessWidget {
  const SightDetails({Key? key, required this.sight, required this.isDarkMode})
      : super(key: key);

  final Sight sight;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 360,
              width: double.infinity,
              child: Image.network(
                sight.url ??
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBKEGmmEQ4WlpXIfdqhhaFbJER2pXMLOFU3A&usqp=CAU',
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, trace) {
                  return Center(child: Text('Network connection error'));
                },
              ),
            ),
            Positioned(
              top: 36,
              left: 16,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: isDarkMode ? dmPrimaryColor : lmPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  '<',
                  style: TextStyle(
                      color: isDarkMode ? lmPrimaryColor : textColorMain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Пряности и радости',
                style: isDarkMode
                    ? textBoldNormalStyle24White
                    : textBoldNormalStyle24,
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'ресторан',
                    style: isDarkMode
                        ? textBoldNormalStyle14Secondary2
                        : textBoldNormalStyle14,
                  ),
                  SizedBox(width: 16),
                  Text(
                    'закрыто до 09:00',
                    style: isDarkMode
                        ? textRegularNormal14InActive
                        : textRegularNormal14,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                style:
                    isDarkMode ? textRegularNormal14White : textRegularNormal14,
              ),
              SizedBox(height: 24),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.router,
                      color: isDarkMode ? Colors.white : Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'построить маршрут'.toUpperCase(),
                      style: textBoldNormalStyle14White,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.next_plan,
                          color: isDarkMode ? Colors.white : Colors.blueGrey,
                        ),
                        SizedBox(width: 9),
                        Text(
                          'Запланировать',
                          style: isDarkMode
                              ? textRegularNormal14InActive
                              : textRegularNormal14Secondary2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: isDarkMode ? Colors.white : Colors.red,
                        ),
                        SizedBox(width: 9),
                        Text(
                          'В Избранное',
                          style: isDarkMode
                              ? textRegularNormal14White
                              : textRegularNormal14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
