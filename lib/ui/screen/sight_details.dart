import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

/*
* This class displays detail information about sight
*/
class SightDetails extends StatelessWidget {
  const SightDetails({Key? key, required this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: Colors.lightGreenAccent,
              height: 360,
              width: double.infinity,
            ),
            Positioned(
              top: 36,
              left: 16,
              child: Container(
                width: 32,
                height: 32,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text(
                  '<',
                  style: TextStyle(color: Color(int.parse('0xff252849'))),
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
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Color(int.parse('0xff3B3E5B')),
                ),
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'ресторан',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Color(int.parse('0xff3B3E5B')),
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'закрыто до 09:00',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(int.parse('0xff3B3E5B')),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color(int.parse('0xff3B3E5B')),
                ),
              ),
              SizedBox(height: 24),
              Container(
                color: Colors.green,
                width: double.infinity,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 20, height: 18, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'построить маршрут'.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
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
                        Container(
                          width: 22,
                          height: 19,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(width: 9),
                        Text(
                          'Запланировать',
                          style: TextStyle(
                            color: Color(int.parse('0xff7C7E92')),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          width: 22,
                          height: 19,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 9),
                        Text(
                          'В Избранное',
                          style: TextStyle(
                            color: Color(int.parse('0xff3B3E5B')),
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
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
