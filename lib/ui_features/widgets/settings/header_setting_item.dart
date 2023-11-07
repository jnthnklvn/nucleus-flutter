import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

class HeaderSettingItem extends StatelessWidget {
  final String title;
  const HeaderSettingItem({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AssetColors.skyLightest,
      ),
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
        bottom: 15,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: AssetStyles.labelTinyReguler.copyWith(
            color: AssetColors.inkLight,
          ),
        ),
      ),
    );
  }
}
