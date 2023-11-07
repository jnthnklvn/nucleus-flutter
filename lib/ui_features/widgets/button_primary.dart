import 'package:flutter/material.dart';

import 'package:nucleus_ui_app/config/config.dart';

// ignore: must_be_immutable
class ButtonPrimary extends StatelessWidget {
  double? height = 48;
  double? width = 48;
  final String text;
  final TextStyle? style;
  final Color? color;
  final VoidCallback onTap;
  final double? radius;
  final bool? disable;
  EdgeInsetsGeometry? padding;
  ButtonPrimary({
    required this.text,
    required this.onTap,
    Key? key,
    this.height,
    this.width,
    this.style,
    this.color,
    this.radius = 30,
    this.padding,
    this.disable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? 170,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: color ?? AssetColors.primaryBase,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(radius!),
        color: color ?? AssetColors.primaryBase,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius!),
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: style ??
                  AssetStyles.labelMdRegular.copyWith(
                    color: AssetColors.skyWhite,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
