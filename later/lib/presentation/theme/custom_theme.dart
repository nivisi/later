import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  const CustomTheme({
    this.backgroundColor,
    this.backgroundSecondaryColor,
    this.foregroundColor,
    this.foregroundDisabledColor,
    this.foregroundSecondaryColor,
    this.foregroundSeocndaryDisabledColor,
    this.primaryColor,
    this.secondaryPrimaryColor,
    this.primaryDisabledColor,
    this.secondaryPrimaryDisabledColor,
  });

  final Color? backgroundColor;
  final Color? backgroundSecondaryColor;
  final Color? foregroundColor;
  final Color? foregroundDisabledColor;
  final Color? foregroundSecondaryColor;
  final Color? foregroundSeocndaryDisabledColor;
  final Color? primaryColor;
  final Color? secondaryPrimaryColor;
  final Color? primaryDisabledColor;
  final Color? secondaryPrimaryDisabledColor;

  @override
  ThemeExtension<CustomTheme> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomTheme> lerp(
      ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) {
      return this;
    }

    return CustomTheme(
      backgroundColor: Color.lerp(
        backgroundColor,
        other.backgroundColor,
        t,
      ),
      backgroundSecondaryColor: Color.lerp(
        backgroundSecondaryColor,
        other.backgroundSecondaryColor,
        t,
      ),
      foregroundColor: Color.lerp(
        foregroundColor,
        other.foregroundColor,
        t,
      ),
      foregroundDisabledColor: Color.lerp(
        foregroundDisabledColor,
        other.foregroundDisabledColor,
        t,
      ),
      foregroundSecondaryColor: Color.lerp(
        foregroundSecondaryColor,
        other.foregroundSecondaryColor,
        t,
      ),
      foregroundSeocndaryDisabledColor: Color.lerp(
        foregroundSeocndaryDisabledColor,
        other.foregroundSeocndaryDisabledColor,
        t,
      ),
      primaryColor: Color.lerp(
        primaryColor,
        other.primaryColor,
        t,
      ),
      secondaryPrimaryColor: Color.lerp(
        secondaryPrimaryColor,
        other.secondaryPrimaryColor,
        t,
      ),
      primaryDisabledColor: Color.lerp(
        primaryDisabledColor,
        other.primaryDisabledColor,
        t,
      ),
      secondaryPrimaryDisabledColor: Color.lerp(
        secondaryPrimaryDisabledColor,
        other.secondaryPrimaryDisabledColor,
        t,
      ),
    );
  }
}
