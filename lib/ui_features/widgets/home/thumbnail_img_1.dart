import 'package:flutter/material.dart';

import 'package:nucleus_ui_app/config/config.dart';

class ThumbnailImg1 extends StatelessWidget {
  final double? width;
  final Widget? widget;
  const ThumbnailImg1({
    required this.data, super.key,
    this.width,
    this.widget,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: width,
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: width! * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(data['images']!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              verticalSpace(10),
              Text(
                data['title']!,
                style: AssetStyles.labelMdRegular
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              verticalSpace(10),
              Text(
                data['desc']!,
                style: AssetStyles.labelTinyReguler.copyWith(
                  fontWeight: FontWeight.normal,
                  color: AssetColors.inkLight,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
