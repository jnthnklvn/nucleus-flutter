import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/input_rounded.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

class VerificationPages extends StatelessWidget {
  static const String verificationPages = 'verificationPages';
  const VerificationPages({super.key});

  @override
  Widget build(BuildContext context) {
    final v1 = TextEditingController();
    final v2 = TextEditingController();
    final v3 = TextEditingController();
    final v4 = TextEditingController();
    final listFocus = <FocusNode>[
      FocusNode(),
      FocusNode(),
      FocusNode(),
      FocusNode(),
    ];

    final controller = <TextEditingController>[
      v1,
      v2,
      v3,
      v4,
    ];

    return Scaffold(
      appBar: AppBarPrimary(
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 20, right: 20),
            child: TextButtonCustom(
              text: 'Change Number',
              onTap: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Enter authentication code',
                    style: AssetStyles.t3,
                  ),
                  verticalSpace(10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Enter the 4-digit that we have sent via the '
                              'phone number ',
                          style: AssetStyles.labelMdRegular,
                        ),
                        TextSpan(
                          text: '+62 813-8172-5977',
                          style: AssetStyles.labelMdRegular.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [0, 1, 2, 3].map((e) {
                      controller[e].text = e.toString();
                      return InputVerification(
                        edgeInsetsGeometry: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        focusNode: listFocus[e],
                        controller: controller[e],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            ButtonPrimary(
              width: screenWidth(context) * 0.8,
              text: 'Continue',
              color: AssetColors.skyLight,
              style: AssetStyles.labelMdRegular.copyWith(
                color: AssetColors.skyDark,
                fontWeight: FontWeight.w500,
              ),
              onTap: () {},
            ),
            verticalSpace(20),
            TextButtonCustom(
              onTap: () {},
              text: 'Resend Code',
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
