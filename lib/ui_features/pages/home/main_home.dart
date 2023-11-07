import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/home/thumbnail_img.dart';
import 'package:nucleus_ui_app/ui_features/widgets/home/thumbnail_img_1.dart';

class HomePages1 extends StatelessWidget {
  HomePages1({super.key});
  static const String homePages = 'homePages';

  final List<Map<String, String>> hits = [
    {
      'title': 'Chill Hits',
      'images': AssetPaths.imageHits1,
    },
    {
      'title': 'Top Hits',
      'images': AssetPaths.imageHits2,
    },
    {
      'title': 'Happy Hits',
      'images': AssetPaths.imageHits3,
    },
    {
      'title': 'Good Time',
      'images': AssetPaths.imageHits4,
    }
  ];

  final List<Map<String, String>> topSongs = [
    {
      'title': 'Daily Mix',
      'images': AssetPaths.imageHits2,
      'desc': 'Jonas Blue, NOTD, David Guetta and more'
    },
    {
      'title': "Feelin' Myself",
      'images': AssetPaths.imageHits3,
      'desc': 'Ariana Grande, Doja Cat, Megan Thee Stallion...',
    },
    {
      'title': 'Deny Caknan',
      'images': AssetPaths.imageHits2,
      'desc': 'BTS, Dua Lipa, Malone, Justin Bieber and more',
    },
    {
      'title': 'Adellla',
      'images': AssetPaths.imageHits1,
      'desc': 'BTS, Dua Lipa, Malone, Justin Bieber and more',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                SizedBox(
                  width: screenWidth(context),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good Morning!',
                        style: AssetStyles.t3,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          AssetPaths.fujiImage,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                SizedBox(
                  height: screenHeight(context) * 0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hits.length,
                    itemBuilder: (context, index) => ThumbnailImg(
                      hits: hits[index],
                      width: screenHeight(context) * 0.13,
                    ),
                  ),
                ),
                verticalSpace(20),
                Text(
                  'Just For You',
                  style: AssetStyles.labelMdRegular
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                verticalSpace(20),
                SizedBox(
                  height: screenHeight(context) * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hits.length,
                    itemBuilder: (context, index) => ThumbnailImg1(
                      data: topSongs[index],
                      width: screenHeight(context) * 0.2,
                    ),
                  ),
                ),
                verticalSpace(20),
                Text(
                  'Popular Songs',
                  style: AssetStyles.labelLgRegular.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(20),
                SizedBox(
                  height: screenHeight(context) * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hits.length,
                    itemBuilder: (context, index) => ThumbnailImg1(
                      data: topSongs[index],
                      width: screenHeight(context) * 0.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
