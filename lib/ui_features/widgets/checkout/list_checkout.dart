import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

class ListCheckout extends StatelessWidget {
  final String leftText;
  final String rightText;
  final TextStyle? stlyeRightText;
  const ListCheckout({
    required this.leftText, required this.rightText, super.key,
    this.stlyeRightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AssetStyles.labelMdRegular.copyWith(
            color: AssetColors.inkLight,
          ),
        ),
        Text(
          rightText,
          style: stlyeRightText ??
              AssetStyles.labelMdRegular.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
