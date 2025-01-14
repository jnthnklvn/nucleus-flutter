import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';
import 'package:nucleus_ui_app/config/ui_helper.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/input_custom.dart';

class StepTwoPerson extends StatelessWidget {
  const StepTwoPerson({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerEmail = TextEditingController();
    controllerEmail.text = 'juinal.william@gmail.com';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40),
              Text(
                'What’s your email address?',
                style: AssetStyles.labelLgRegular.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(20),
              InputCustom(
                controller: controllerEmail,
                inputType: TextInputType.emailAddress,
                hintText: 'input email address',
                label: const Text('Email'),
              ),
              verticalSpace(50),
            ],
          ),
        ),
        ButtonPrimary(
          width: screenHeight(context) * 0.9,
          onTap: () {},
          text: 'Continue',
        ),
        verticalSpace(20),
      ],
    );
  }
}
