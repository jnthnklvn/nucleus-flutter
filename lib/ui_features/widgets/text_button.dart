import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

// ignore: must_be_immutable
class TextButtonCustom extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  TextStyle? style;
  final BorderRadius? borderRadius;
  TextButtonCustom({
    required this.text,
    required this.onTap,
    super.key,
    this.borderRadius,
    this.decoration,
    this.padding,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Container(
        padding: padding,
        decoration: decoration,
        child: Text(
          text,
          style: style ??
              AssetStyles.labelMdRegular.copyWith(
                color: AssetColors.primaryBase,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
