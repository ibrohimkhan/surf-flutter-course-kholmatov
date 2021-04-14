import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';

/// Стили текстов
TextStyle _text = const TextStyle(
      fontStyle: FontStyle.normal,
      color: textColorSecondary,
    ),

//Light
    textLight = _text.copyWith(fontWeight: FontWeight.w300),

//Regular
    textRegular = _text.copyWith(fontWeight: FontWeight.w400),
    textRegularNormal = textRegular.copyWith(fontStyle: FontStyle.normal),
    textRegularNormal14 = textRegular.copyWith(fontSize: 14.0),
    textRegularNormal14Secondary2 =
        textRegularNormal14.copyWith(color: textColorSecondary2),

//Medium
    textMedium = _text.copyWith(fontWeight: FontWeight.w500),
    textMediumNormalStyle = textMedium.copyWith(fontStyle: FontStyle.normal),
    textMediumNormalStyle16 = textMediumNormalStyle.copyWith(fontSize: 16.0),
    textMediumNormalStyle16Secondary =
        textMediumNormalStyle16.copyWith(color: textColorSecondary),

//Bold
    textBold = _text.copyWith(fontWeight: FontWeight.w700),
    textBoldNormalStyle = textBold.copyWith(fontStyle: FontStyle.normal),
    textBoldNormalStyle14 = textBoldNormalStyle.copyWith(fontSize: 14.0),
    textBoldNormalStyle14White =
        textBoldNormalStyle14.copyWith(color: textColorWhite);
