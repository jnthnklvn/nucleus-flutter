import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';

// ignore: must_be_immutable
class FilterComboBox extends StatelessWidget {
  final String? title;
  final String? subTitle;
  VoidCallback onTap;
  final String? icon;
  final bool? isActive;
  FilterComboBox({
    required this.onTap,
    super.key,
    this.title,
    this.subTitle,
    this.isActive = false,
    this.icon = AssetPaths.iconDown,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: AssetStyles.labelMdRegular.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(5),
              Text(
                subTitle!,
                style: AssetStyles.labelSmReguler.copyWith(
                  color: AssetColors.inkLighter,
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            (isActive!) ? AssetPaths.iconUp : AssetPaths.iconDown,
            width: 10,
            height: 10,
          ),
        ],
      ),
    );
  }
}
