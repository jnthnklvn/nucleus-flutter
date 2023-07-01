import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../widgets/checkout/list_checkout.dart';

class CheckoutPages extends StatelessWidget {
  const CheckoutPages({super.key});

  static const String checkoutPages = "checkoutPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight(context) * 0.35,
            width: screenWidth(context),
            child: const Image(
              image: AssetImage(AssetPaths.imageCheckout),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight(context) * 0.3),
            width: screenWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: screenWidth(context) * 0.3,
                            height: screenHeight(context) * 0.2,
                            child: const Image(
                              image: AssetImage(AssetPaths.imageCheckout),
                              fit: BoxFit.cover,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Obvilion",
                                style: AssetStyles.h2,
                              ),
                              verticalSpace(15),
                              const Text(
                                "Wed, 20 Jan - 10:00 AM",
                                style: AssetStyles.h2i,
                              ),
                              verticalSpace(5),
                              Text(
                                "CMX Cinemas, New York",
                                style: AssetStyles.labelMdSmReg1.copyWith(
                                  color: AssetColors.textGrey,
                                ),
                              ),
                              verticalSpace(20),
                            ],
                          ),
                        ],
                      ),
                      verticalSpace(50),
                      ListCheckout(
                        leftText: "Movie ticket",
                        rightText: "\$22.00",
                      ),
                      verticalSpace(20),
                      ListCheckout(
                        leftText: "Qty",
                        rightText: "2",
                      ),
                      verticalSpace(20),
                      ListCheckout(
                        leftText: "Convenience fees",
                        rightText: "\$1.00",
                      ),
                      verticalSpace(20),
                      ListCheckout(
                        leftText: "Subtotal",
                        rightText: "\$43.00",
                      ),
                      verticalSpace(10),
                      const Divider(
                        thickness: 2,
                      ),
                      verticalSpace(10),
                      ListCheckout(
                        leftText: "Total amount",
                        rightText: "\$43.00",
                      ),
                    ],
                  ),
                ),
                ButtonPrimary(
                  onTap: () {},
                  text: "Pay . \$ 43.00",
                  height: 50,
                ),
                verticalSpace(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
