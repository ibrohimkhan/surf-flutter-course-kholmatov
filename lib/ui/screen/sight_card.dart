import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/text_styles.dart';

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
                  style: textBoldNormalStyle14White,
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
                    style: textMediumNormalStyle16Secondary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 2, 16, 16),
                  child: Text(
                    sight.details ?? 'Details',
                    style: textRegularNormal14Secondary2,
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
