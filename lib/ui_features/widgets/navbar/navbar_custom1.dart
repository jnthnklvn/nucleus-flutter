import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/navbar_model.dart';

class NavBarCustom1 extends StatelessWidget {
  final List<NavbarModel> data;
  final double? height;
  const NavBarCustom1({
    required this.data, super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 70,
      child: Row(
        children: data
            .map(
              (e) => Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: e.status
                              ? Border.all(color: AssetColors.primaryBase)
                              : Border.all(
                                  color: AssetColors.skyDark,
                                ),
                        ),
                      ),
                    ),
                    if (e.title != '') Column(
                            children: [
                              verticalSpace(5),
                              Text(
                                e.title,
                                style: AssetStyles.labelTinyReguler.copyWith(
                                  color: AssetColors.inkLight,
                                ),
                              ),
                              verticalSpace(10)
                            ],
                          ) else verticalSpace(15),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
