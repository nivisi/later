import 'package:flutter/material.dart';

class LaterTypography extends ThemeExtension<LaterTypography> {
  const LaterTypography({
    required this.title1,
    required this.title2,
    required this.subtitle1,
    required this.subtitle2,
    required this.text1,
    required this.text2,
  });

  final TextStyle title1;
  final TextStyle title2;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle text1;
  final TextStyle text2;

  @override
  LaterTypography copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? text1,
    TextStyle? text2,
  }) {
    return LaterTypography(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      text1: text1 ?? this.text1,
      text2: text2 ?? this.text2,
    );
  }

  @override
  ThemeExtension<LaterTypography> lerp(
    ThemeExtension<LaterTypography>? other,
    double t,
  ) {
    if (other is! LaterTypography) {
      return this;
    }

    return LaterTypography(
      title1: TextStyle.lerp(
        title1,
        other.title1,
        t,
      )!,
      title2: TextStyle.lerp(
        title2,
        other.title2,
        t,
      )!,
      subtitle1: TextStyle.lerp(
        subtitle1,
        other.subtitle1,
        t,
      )!,
      subtitle2: TextStyle.lerp(
        subtitle2,
        other.subtitle1,
        t,
      )!,
      text1: TextStyle.lerp(
        text1,
        other.text1,
        t,
      )!,
      text2: TextStyle.lerp(
        text2,
        other.text2,
        t,
      )!,
    );
  }
}
