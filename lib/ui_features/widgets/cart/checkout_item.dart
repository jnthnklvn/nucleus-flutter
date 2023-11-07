import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

class CheckOutItem extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final VoidCallback onTap;

  const CheckOutItem({
    required this.onTap,
    super.key,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: AssetStyles.labelMdRegular,
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
        TextButtonCustom(
          text: 'Edit',
          borderRadius: BorderRadius.circular(
            20,
          ),
          onTap: onTap,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AssetColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ],
    );
  }
}
