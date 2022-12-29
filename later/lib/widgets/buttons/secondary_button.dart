import 'package:flutter/material.dart';

import '../../presentation/theme/theme.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.onTap,
    required this.title,
  });

  final VoidCallback? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final LaterPalette laterPalette =
        Theme.of(context).extension<LaterPalette>()!;
    final LaterTypography laterTypography =
        Theme.of(context).extension<LaterTypography>()!;
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: laterPalette.secondaryPrimaryColor,
        disabledForegroundColor: laterPalette.secondaryPrimaryDisabledColor,
        textStyle: laterTypography.text1,
      ),
      onPressed: onTap,
      child: Text(title),
    );
  }
}
