import 'package:flutter/material.dart';
import '../../../config/config.dart';

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

  const InputCustom({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.inputType = TextInputType.text,
    this.label,
    this.hintText = "Input Number",
    this.obsecure = false,
    this.focusNode,
    this.contentPadding,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: AssetStyles.labelMdMdReg,
        hintText: hintText,
        label: label,
        contentPadding: contentPadding,
      ),
      style: AssetStyles.labelMdRegular.copyWith(
        color: AssetColors.inkLighter,
      ),
      keyboardType: inputType,
      obscureText: obsecure,
    );
  }
}
