import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/sort_model.dart';

class SizeItemList extends StatelessWidget {
  const SizeItemList({required this.data, super.key});

  final SortModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 15,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: data.status ? AssetColors.primaryColor : Colors.transparent,
      ),
      child: Text(
        data.name,
        style: AssetStyles.labelMdMdReg.copyWith(
          color: data.status ? AssetColors.skyWhite : AssetColors.inkDarkest,
        ),
      ),
    );
  }
}
