import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/posts_model.dart';

class PostThumbSmall extends StatelessWidget {
  final Posts data;
  const PostThumbSmall({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.imgThumb),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            horizontalSpace(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    data.title,
                    style: AssetStyles.labelSmReguler.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                    maxLines: 2,
                  ),
                  verticalSpace(10),
                  Text(
                    '${data.time} · by ${data.authors}',
                    style: AssetStyles.labelTinyReguler.copyWith(
                      color: AssetColors.inkLight,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
