import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
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
  CustomColors copyWith({
    Color? backgroundColor,
    Color? backgroundSecondaryColor,
    Color? foregroundColor,
    Color? foregroundDisabledColor,
    Color? foregroundSecondaryColor,
    Color? foregroundSeocndaryDisabledColor,
    Color? primaryColor,
    Color? secondaryPrimaryColor,
    Color? primaryDisabledColor,
    Color? secondaryPrimaryDisabledColor,
    TextStyle? title1,
  }) {
    return CustomColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundSecondaryColor:
          backgroundSecondaryColor ?? this.backgroundSecondaryColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundDisabledColor:
          foregroundDisabledColor ?? this.foregroundDisabledColor,
      foregroundSecondaryColor:
          foregroundSecondaryColor ?? this.foregroundSecondaryColor,
      foregroundSeocndaryDisabledColor: foregroundSeocndaryDisabledColor ??
          this.foregroundSeocndaryDisabledColor,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryPrimaryColor:
          secondaryPrimaryColor ?? this.secondaryPrimaryColor,
      primaryDisabledColor: primaryDisabledColor ?? this.primaryDisabledColor,
      secondaryPrimaryDisabledColor:
          secondaryPrimaryDisabledColor ?? this.secondaryPrimaryDisabledColor,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
      ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }

    return CustomColors(
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
