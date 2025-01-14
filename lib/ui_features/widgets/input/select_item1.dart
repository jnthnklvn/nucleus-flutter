import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

class SelectItem1 extends StatelessWidget {
  final bool? border;
  final String? text;
  final Color? bgColor;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final bool? isActive;
  final AlignmentGeometry? alignment;
  final Color? bgSecond;
  const SelectItem1({
    required this.text,
    super.key,
    this.border = false,
    this.alignment,
    this.bgColor,
    this.style,
    this.padding,
    this.margin,
    this.onTap,
    this.isActive,
    this.bgSecond,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 16,
          ),
      alignment: alignment,
      margin: margin ?? const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: isActive!
            ? AssetColors.primaryLightest
            : bgSecond ?? AssetColors.skyWhite,
        borderRadius: BorderRadius.circular(30),
        border: isActive!
            ? const Border.symmetric()
            : Border.all(
                color: AssetColors.skyLighter,
              ),
      ),
      child: Text(
        text!,
        style: AssetStyles.labelMdRegular.copyWith(
          color: isActive! ? AssetColors.primaryBase : AssetColors.inkDarkest,
        ),
      ),
    );
  }
}
