import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/items_model.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/home/item_home.dart';

class HomeAllItemsPages extends StatelessWidget {
  const HomeAllItemsPages({super.key});
  static const String homeAllItemsPages = 'homeAllItemsPages';

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final data = List<ItemModel>.generate(
      30,
      (index) => ItemModel(
        images: 'https://picsum.photos/id/${Random().nextInt(100)}/200/300',
        name: faker.company.name(),
      ),
    );

    return Scaffold(
      appBar: AppBarPrimary(
        text: 'All Items',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AssetPaths.iconSettings),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => HomeItem(item: data[index]),
        ),
      ),
    );
  }
}
