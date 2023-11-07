import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';

class ButtonIconRounded extends StatelessWidget {
  final String icon;
  final double? width, height;
  final VoidCallback onTap;
  final Color? color;
  const ButtonIconRounded({
    required this.icon,
    required this.onTap,
    super.key,
    this.width = 50,
    this.height = 50,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          color: AssetColors.inkDarkest.withOpacity(0.2),
        ),
      ),
      child: Material(
        clipBehavior: Clip.none,
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}
