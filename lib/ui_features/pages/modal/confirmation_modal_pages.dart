import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

class ConfirmationModalPages extends StatelessWidget {
  const ConfirmationModalPages({super.key});
  static const String confirmationModalPages = 'confirmationModalPages';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              builder: (context) => const ModalConfirmationBody(),
            );
          },
          child: const Text('Show Modal'),
        ),
      ),
    );
  }
}

class ModalConfirmationBody extends StatelessWidget {
  const ModalConfirmationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.36,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 48,
              height: 5,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AssetColors.skyBase,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
            child: Column(
              children: [
                const Text(
                  'Remove Item ?',
                  style: AssetStyles.t3,
                ),
                verticalSpace(20),
                const Text(
                  'Are you sure want to remove this item from\nyour cart?',
                  style: AssetStyles.labelMdRegular,
                  textAlign: TextAlign.center,
                ),

                verticalSpace(40),
                ButtonPrimary(
                  onTap: () {},
                  text: 'Remove Item',
                  height: 40,
                  width: screenWidth(context) * 0.9,
                ),
                verticalSpace(20),
                TextButtonCustom(
                  text: 'Cancel',
                  style: AssetStyles.labelMdRegular,
                  onTap: () {},
                ),
                // verticalSpace(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
