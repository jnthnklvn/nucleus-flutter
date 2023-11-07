import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

class SubScriptionPages extends StatelessWidget {
  const SubScriptionPages({super.key});
  static const String subscriptionPages = 'subscriptionPages';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetColors.skyLight,
      appBar: AppBarPrimary(
        disableBack: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 15, right: 20),
            child: TextButtonCustom(text: 'Skip', onTap: backScreenUntil),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Get unlimited access to our programs.',
                style: AssetStyles.t3,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Take the first step towards a healthier and\nhappier life.',
                style: AssetStyles.labelSmReguler,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(20),
            CarouselSlider(
              options: CarouselOptions(
                disableCenter: true,
                enlargeCenterPage: true,
                aspectRatio: 1.1,
                height: 352,
                enableInfiniteScroll: false,
              ),
              items: [1, 2, 3].map((e) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AssetColors.skyWhite,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'POPULAR',
                        style: AssetStyles.labelTinyReguler,
                      ),
                      verticalSpace(15),
                      Text(
                        'Exercise Class',
                        style: AssetStyles.labelLgRegular.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(15),
                      const Text(
                        '\$60.99',
                        style: AssetStyles.t1,
                      ),
                      verticalSpace(15),
                      const Text(
                        'For 1 Year',
                        style: AssetStyles.labelTinyReguler,
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: const Text(
                          'iOS, Android, Apple TV, Roku,'
                          '\nAmazon Fire TV, web browser',
                          style: AssetStyles.labelTinyReguler,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(20),
                      ButtonPrimary(
                        onTap: () {
                          debugPrint('asd');
                        },
                        width: screenWidth(context),
                        color: AssetColors.primaryBase,
                        text: 'Subscribe',
                        height: 50,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            verticalSpace(20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'You will be charged \$9.99 (monthly plan) or \$60.99'
                '\n(annual plan) through your iTunes account. You can'
                '\ncancel at any time if your not satisfied.',
                style: AssetStyles.labelTinyReguler,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(32),
          ],
        ),
      ),
    );
  }
}
