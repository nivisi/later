import 'package:flutter/material.dart';
import 'package:later/presentation/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onTap,
    required this.title,
  });

  final VoidCallback? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final laterPalette = context.palette;

    final laterTypography = context.typography;

    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: laterPalette.primaryColor,
        disabledForegroundColor: laterPalette.primaryDisabledColor,
        textStyle: laterTypography.text1,
      ),
      onPressed: onTap,
      child: Text(title),
    );
  }
}
