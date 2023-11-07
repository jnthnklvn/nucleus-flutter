import 'package:flutter/material.dart';

import 'package:nucleus_ui_app/config/config.dart';

class ThumbnailImg extends StatelessWidget {
  final double? width;
  final Widget? widget;
  const ThumbnailImg({
    required this.hits, super.key,
    this.width,
    this.widget,
  });

  final Map<String, String> hits;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: width,
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(hits['images']!),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              verticalSpace(10),
              Text(
                hits['title']!,
                style: AssetStyles.labelSmReguler
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
