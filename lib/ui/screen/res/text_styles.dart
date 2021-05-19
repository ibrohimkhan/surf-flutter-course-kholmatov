import 'package:flutter/material.dart';
import 'colors.dart';

/// Стили текстов
TextStyle _text = const TextStyle(
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  color: textColorSecondary,
);

//Light
TextStyle textLight = _text.copyWith(fontWeight: FontWeight.w300);

//Regular
TextStyle textRegular = _text.copyWith(fontWeight: FontWeight.w400);
TextStyle textRegularNormal = textRegular.copyWith(fontStyle: FontStyle.normal);

TextStyle textRegularNormal14 = textRegular.copyWith(fontSize: 14.0);
TextStyle textRegularNormal14White = textRegularNormal14.copyWith(color: lmPrimaryColor);
TextStyle textRegularNormal14InActive = textRegularNormal14.copyWith(color: textColorInactiveBlack);
TextStyle textRegularNormal14Secondary2 =
    textRegularNormal14.copyWith(color: textColorSecondary2);
TextStyle textRegularNormal14Secondary2Green =
    textRegularNormal14.copyWith(color: Colors.lightGreen);

//Medium
TextStyle textMedium = _text.copyWith(fontWeight: FontWeight.w500);
TextStyle textMediumNormalStyle =
    textMedium.copyWith(fontStyle: FontStyle.normal);
TextStyle textMediumNormalStyle16 =
    textMediumNormalStyle.copyWith(fontSize: 16.0);
TextStyle textMediumNormalStyle18 =
    textMediumNormalStyle.copyWith(fontSize: 18.0);
TextStyle textMediumNormalStyle16Secondary =
    textMediumNormalStyle16.copyWith(color: textColorSecondary);
TextStyle textMediumNormalStyle16SecondaryWhite =
    textMediumNormalStyle16.copyWith(color: Colors.white);
TextStyle textMediumNormalStyle18Main =
    textMediumNormalStyle18.copyWith(color: textColorMain);
TextStyle textMediumNormalStyle18MainWhite =
    textMediumNormalStyle18.copyWith(color: Colors.white);

//Bold
TextStyle textBold = _text.copyWith(fontWeight: FontWeight.w700);
TextStyle textBoldNormalStyle = textBold.copyWith(fontStyle: FontStyle.normal);

TextStyle textBoldNormalStyle14 = textBoldNormalStyle.copyWith(fontSize: 14.0);
TextStyle textBoldNormalStyle14Secondary2 = textBoldNormalStyle14.copyWith(color: textColorSecondary2);
TextStyle textBoldNormalStyle14White =
    textBoldNormalStyle14.copyWith(color: textColorWhite);
TextStyle textBoldNormalStyle14Grey =
    textBoldNormalStyle14.copyWith(color: Colors.grey);
TextStyle textBoldNormalStyle14InactiveBlack =
    textBoldNormalStyle14.copyWith(color: textColorInactiveBlack);

TextStyle textBoldNormalStyle24 = textBoldNormalStyle.copyWith(fontSize: 24.0);
TextStyle textBoldNormalStyle24White = textBoldNormalStyle24.copyWith(color: lmPrimaryColor);

TextStyle textBoldNormalStyle32 = textBoldNormalStyle.copyWith(fontSize: 32.0);
TextStyle textBoldNormalStyle32Black =
    textBoldNormalStyle32.copyWith(color: textColorBlack);
TextStyle textBoldNormalStyle32White =
    textBoldNormalStyle32.copyWith(color: Colors.white);
