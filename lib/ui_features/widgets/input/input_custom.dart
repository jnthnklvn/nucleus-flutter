import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

class InputCustom extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final TextEditingController controller;
  final Widget? label;
  final String? hintText;
  final bool obsecure;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? textStyle;
  final bool filled, borderless;
  final Color? fillColor;
  final double radius;

  const InputCustom({
    required this.controller, super.key,
    this.prefixIcon,
    this.borderless = false,
    this.inputType = TextInputType.text,
    this.label,
    this.hintText = 'Input Number',
    this.obsecure = false,
    this.focusNode,
    this.contentPadding,
    this.suffixIcon,
    this.textStyle,
    this.fillColor,
    this.filled = false,
    this.radius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderless ? Colors.transparent : Colors.black,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: AssetStyles.labelMdMdReg,
        hintText: hintText,
        label: label,
        contentPadding: contentPadding,
      ),
      style: textStyle ??
          AssetStyles.labelMdRegular.copyWith(
            color: AssetColors.inkDarkest,
          ),
      keyboardType: inputType,
      obscureText: obsecure,
    );
  }
}
