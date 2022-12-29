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
    final LaterPalette laterPalette =
        Theme.of(context).extension<LaterPalette>()!;
    final LaterTypography laterTypography =
        Theme.of(context).extension<LaterTypography>()!;
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
