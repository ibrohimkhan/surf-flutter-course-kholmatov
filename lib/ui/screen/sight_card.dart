import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

/*
* This class displays short info about the sight
*/
class SightCard extends StatelessWidget {
  const SightCard({Key? key, required this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Stack(
            children: [
              Container(height: 96, color: Colors.lightBlueAccent),
              Positioned(
                left: 16,
                top: 16,
                child: Text(
                  sight.type ?? 'категория',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  width: 20,
                  height: 18,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Container(
            color: Color(0xF5F5F5),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Text(
                    sight.name,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color.fromARGB(59, 62, 91, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 2, 16, 16),
                  child: Text(
                    sight.details ?? 'Details',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color.fromARGB(124, 126, 146, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
