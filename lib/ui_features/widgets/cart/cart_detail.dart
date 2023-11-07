import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';

class CartDetail extends StatelessWidget {
  final String title;
  final String caption;
  final VoidCallback? onTap;
  const CartDetail(
      {required this.title, required this.caption, super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AssetStyles.labelMdRegular,
              ),
              verticalSpace(5),
              Text(
                caption,
                style: AssetStyles.labelSmReguler.copyWith(
                  color: AssetColors.inkLighter,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: onTap ?? () {},
          child: SvgPicture.asset(
            AssetPaths.iconAdd,
          ),
        )
      ],
    );
  }
}
