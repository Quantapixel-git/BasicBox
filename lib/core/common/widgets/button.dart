import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color? backgroundColor;
  final Color? frogroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledForgroundColor;
  final bool disabled;
  final bool fullWidth;
  final TextStyle? textStyle;
  final double elevation;

  const Button({
    super.key,
    required this.onTap,
    required this.title,
    this.backgroundColor,
    this.frogroundColor,
    this.disabledBackgroundColor,
    this.disabledForgroundColor,
    this.disabled = false,
    this.fullWidth = false,
    this.textStyle,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          textStyle: textStyle,
          backgroundColor: backgroundColor,
          foregroundColor: frogroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          disabledForegroundColor: disabledForgroundColor ?? whiteColor,
        ),
        onPressed: disabled ? null : onTap,
        child: Text(title),
      ),
    );
  }
}
