import 'package:flutter/material.dart';

class LateTypography extends ThemeExtension<LateTypography> {
  const LateTypography({
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

  TextStyle? get title1 => customTitle1;
  TextStyle? get title2 => customTitle2;
  TextStyle? get subtitle1 => customSubtitle1;
  TextStyle? get subtitle2 => customSubtitle2;
  TextStyle? get text1 => customText1;
  TextStyle? get text2 => customText2;

  @override
  LateTypography copyWith({
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
  }) {
    return LateTypography(
      customTitle1: customTitle1 ?? title1 ?? this.customTitle1,
      customTitle2: customTitle2 ?? title2 ?? this.customTitle2,
      customSubtitle1: customSubtitle1 ?? subtitle1 ?? this.customSubtitle1,
      customSubtitle2: customSubtitle2 ?? subtitle2 ?? this.customSubtitle2,
      customText1: customText1 ?? text1 ?? this.customText1,
      customText2: customText2 ?? text2 ?? this.customText2,
    );
  }

  @override
  ThemeExtension<LateTypography> lerp(
      ThemeExtension<LateTypography>? other, double t) {
    if (other is! LateTypography) {
      return this;
    }

    return LateTypography(
      customTitle1: TextStyle.lerp(
        customTitle1,
        other.customTitle1,
        t,
      ),
      customTitle2: TextStyle.lerp(
        customTitle2,
        other.customTitle2,
        t,
      ),
      customSubtitle1: TextStyle.lerp(
        customSubtitle1,
        other.customSubtitle1,
        t,
      ),
      customSubtitle2: TextStyle.lerp(
        customSubtitle2,
        other.customSubtitle1,
        t,
      ),
      customText1: TextStyle.lerp(
        customText1,
        other.customText1,
        t,
      ),
      customText2: TextStyle.lerp(
        customText2,
        other.customText2,
        t,
      ),
    );
  }
}
