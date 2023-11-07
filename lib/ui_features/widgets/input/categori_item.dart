import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';
import 'package:nucleus_ui_app/ui_features/model/categories_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({required this.categories, super.key});

  final Categories categories;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          categories.category,
          style: AssetStyles.labelMdRegular,
        ),
      ),
    );
  }
}
