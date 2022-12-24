import 'package:flutter/material.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle> {
  CustomTextStyle({
    TextStyle? customTitle1,
    TextStyle? customTitle2,
    TextStyle? customSubtitle1,
    TextStyle? customSubtitle2,
    TextStyle? customText1,
    TextStyle? customText2,
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? text1,
    TextStyle? text2,
  })  : customTitle1 = customTitle1 ?? title1,
        customTitle2 = customTitle2 ?? title2,
        customSubtitle1 = customSubtitle1 ?? subtitle1,
        customSubtitle2 = customSubtitle2 ?? subtitle2,
        customText1 = customText1 ?? text1,
        customText2 = customText2 ?? text2;

  final TextStyle? customTitle1;
  final TextStyle? customTitle2;
  final TextStyle? customSubtitle1;
  final TextStyle? customSubtitle2;
  final TextStyle? customText1;
  final TextStyle? customText2;
}
