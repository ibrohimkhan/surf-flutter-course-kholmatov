import 'package:flutter/material.dart';
import 'package:places/domain/visited_sight.dart';
import 'res/colors.dart';
import 'res/text_styles.dart';

/*
* This class displays short info about the visited sight
*/
class VisitedSightCard extends StatelessWidget {
  const VisitedSightCard(
      {Key? key, required this.sight, required this.isDarkMode})
      : super(key: key);

  final VisitedSight sight;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isDarkMode ? dmPrimaryColorDark : lmPrimaryColorLight,
      ),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150, // more user friendly
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      sight.url ??
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBKEGmmEQ4WlpXIfdqhhaFbJER2pXMLOFU3A&usqp=CAU',
                      fit: BoxFit.fitWidth,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
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
                  child: Icon(
                    Icons.favorite,
                    color: isDarkMode ? Colors.white : Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Text(
                      sight.name,
                      style: isDarkMode
                          ? textMediumNormalStyle16SecondaryWhite
                          : textMediumNormalStyle16Secondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 2, 16, 16),
                    child: Text(
                      sight.details ?? 'Details',
                      style: isDarkMode
                          ? textRegularNormal14Secondary2Green
                          : textRegularNormal14Secondary2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
