import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

class ButtonSettingItemNoIcon extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const ButtonSettingItemNoIcon({
    required this.text,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 50,
        width: screenWidth(context),
        child: Text(
          text,
          style: AssetStyles.labelMdRegular,
        ),
      ),
    );
  }
}
