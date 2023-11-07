import 'package:flutter/cupertino.dart';
import 'package:nucleus_ui_app/config/config.dart';

class SwitchCustom extends StatelessWidget {
  final ValueChanged<bool?>? onChange;
  final String? text;
  const SwitchCustom({
    required this.isChecked,
    super.key,
    this.onChange,
    this.text,
  });

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: AssetStyles.labelMdRegular.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 25,
          height: 25,
          child: CupertinoSwitch(
            value: isChecked,
            onChanged: onChange,
            activeColor: AssetColors.primaryBase,
          ),
        )
      ],
    );
  }
}
