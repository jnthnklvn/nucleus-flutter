import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nucleus_ui_app/config/config.dart';

// ignore: must_be_immutable
class ButtonSetiingItem extends StatelessWidget {
  final String icon;
  final String text;
  VoidCallback? onTap;
  Widget? prefixIcon;
  ButtonSetiingItem({
    required this.icon,
    required this.text,
    super.key,
    this.onTap,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset(icon),
            ),
            horizontalSpace(20),
            Expanded(
              child: Text(
                text,
                style: AssetStyles.labelMdRegular,
              ),
            ),
            prefixIcon!,
          ],
        ),
      ),
    );
  }
}
