import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/input_custom.dart';

class AppBarChat extends StatelessWidget {
  const AppBarChat({
    required this.search, super.key,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InputCustom(
            controller: search,
            hintText: 'Search Email',
            filled: true,
            borderless: true,
            fillColor: AssetColors.skyLighter,
            contentPadding: const EdgeInsetsDirectional.symmetric(vertical: 5),
            prefixIcon: SvgPicture.asset(
              AssetPaths.iconSearch,
              width: 10,
              height: 10,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        horizontalSpace(20),
        const CircleAvatar(
          backgroundImage: AssetImage(AssetPaths.imageAvatar1),
        ),
      ],
    );
  }
}
