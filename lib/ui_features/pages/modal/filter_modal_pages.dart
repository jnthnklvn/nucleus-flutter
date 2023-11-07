import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/sort_model.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

class FilterModalPages extends StatelessWidget {
  FilterModalPages({super.key});
  static const String filterModalPages = 'filterModalPages';

  final List<SortModel> sortData = [
    SortModel(name: 'All Categories', status: false),
    SortModel(name: 'Smart Watches', status: true),
    SortModel(name: 'Cell Phones & Accessories', status: true),
    SortModel(name: 'Sporting Goods', status: false),
    SortModel(name: 'Computer', status: false),
  ];

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
              builder: (context) => ModalFilterBody(
                sm: sortData,
              ),
            );
          },
          child: const Text('Show Modal'),
        ),
      ),
    );
  }
}

class ModalFilterBody extends StatelessWidget {
  const ModalFilterBody({
    required this.sm,
    super.key,
  });

  final List<SortModel> sm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.55,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Filter',
                  style: AssetStyles.h2,
                ),
                verticalSpace(20),
                SizedBox(
                  height: screenHeight(context) * 0.25,
                  child: ListView.builder(
                    itemCount: sm.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              sm[index].name,
                              style: AssetStyles.labelMdRegular,
                            ),
                            Checkbox(
                              value: sm[index].status,
                              onChanged: (vale) {},
                              side: const BorderSide(
                                color: AssetColors.skyBase,
                              ),
                              activeColor: AssetColors.primaryBase,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpace(20),
                ButtonPrimary(
                  onTap: () {},
                  text: 'Show 340 Result',
                  height: 40,
                  width: screenWidth(context) * 0.9,
                ),
                verticalSpace(20),
                Center(
                  child: TextButtonCustom(
                    text: 'Reset',
                    style: AssetStyles.labelMdRegular
                        .copyWith(color: AssetColors.inkDarkest),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
