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
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150, // more user friendly
                  width: double.infinity,
                  child: Image.network(
                    sight.url ?? 'https://picsum.photos/250?image=9',
                    fit: BoxFit.fitWidth,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(child: CircularProgressIndicator());
                    },
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
                  child: Container(
                    width: 20,
                    height: 18,
                    color: Colors.red,
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
      ),
    );
  }
}
