import 'package:flutter/material.dart';
import 'package:later/presentation/theme/theme.dart';

extension ThemeBuildContextExtensions on BuildContext {
  LaterPalette get palette {
    final laterPalette = Theme.of(this).extension<LaterPalette>();

    assert(
      laterPalette != null,
      'Tried to find the LaterPalette, but it was not provided as a theme extension',
    );

    return laterPalette!;
  }

  LaterTypography get typography {
    final laterTypography = Theme.of(this).extension<LaterTypography>();

    assert(
      laterTypography != null,
      'Tried to find the LaterTypography, but it was not provided as a theme extension',
    );

    return laterTypography!;
  }
}
