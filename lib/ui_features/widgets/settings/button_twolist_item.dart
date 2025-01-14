import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';

class ButtonTwoListItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback onTap;
  const ButtonTwoListItem({
    required this.title,
    required this.onTap,
    super.key,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AssetStyles.labelMdRegular,
                ),
                verticalSpace(5),
                Text(
                  subTitle!,
                  style: AssetStyles.labelMdRegular.copyWith(
                    color: AssetColors.inkLighter,
                  ),
                ),
              ],
            ),
            SizedBox(
              child: SvgPicture.asset(AssetPaths.iconNext),
            ),
          ],
        ),
      ),
    );
  }
}
