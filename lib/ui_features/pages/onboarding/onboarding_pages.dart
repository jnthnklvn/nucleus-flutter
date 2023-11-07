import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/pages/signin_signup/signin_pages_by_email.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';

class OnboardingPages extends StatefulWidget {
  static const String onBoardingPages = 'onBoardingPages';
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  List<int> dotted = [1, 2, 4, 5];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final topBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height - topBar,
          width: size.width,
          margin: const EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (ctx, constraints) {
                    return OnBoardingFirstPage(constraints: constraints);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: dotted
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (e == 5)
                              ? AssetColors.primaryBase
                              : AssetColors.skyLight,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonPrimary(
                text: 'Create Account',
                onTap: () {
                  nextScreen(const SigninPagesByEmail());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Have an account?',
                      style: AssetStyles.labelMdRegular.copyWith(
                        color: AssetColors.inkDarker,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' Log in',
                      style: AssetStyles.labelMdRegular.copyWith(
                        color: AssetColors.primaryBase,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          nextScreen(const SigninPagesByEmail());
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
