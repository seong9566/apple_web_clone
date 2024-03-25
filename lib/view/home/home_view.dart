import 'dart:ui';

import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/utils/img_res.dart';
import 'package:dot_apple_web/view/home/widgets/device_list.dart';
import 'package:dot_apple_web/view/home/widgets/home_header.dart';
import 'package:dot_apple_web/view/home/widgets/product_news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _body() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          DeviceList(),
          ProductNews(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: ColorAsset.backgroundColor,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 400),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBarIcon(FaIcon(FontAwesomeIcons.apple)),
            appBarText(
              "스토어",
              () {
                print("스토어 클릭");
              },
            ),
            appBarText(
              "Mac",
              () {
                print("Mac 클릭");
              },
            ),
            appBarText(
              "iPad",
              () {
                print("iPad 클릭");
              },
            ),
            appBarText(
              "iPhone",
              () {
                print("iPhone 클릭");
              },
            ),
            appBarText(
              "Watch",
              () {
                print("Watch 클릭");
              },
            ),
            appBarText(
              "AirPods",
              () {
                print("AirPod 클릭");
              },
            ),
            appBarText(
              "TV 및 홈",
              () {
                print("TV 및 홈 클릭");
              },
            ),
            appBarText(
              "엔터테이먼트",
              () {
                print("엔터테이먼트 클릭");
              },
            ),
            appBarText(
              "액세서리",
              () {
                print("액세서리 클릭");
              },
            ),
            appBarText(
              "고객센터",
              () {
                print("고객센터 클릭");
              },
            ),
            appBarIcon(const Icon(Icons.search)),
            appBarIcon(const Icon(Icons.shopping_bag_outlined)),
          ],
        ),
      ),
    );
  }

  Widget appBarIcon(Widget icon) {
    return Container(
      padding: const EdgeInsets.all(7),
      width: 30,
      height: 44,
      child: icon,
    );
  }

  Widget appBarText(String text, VoidCallback onPressed) {
    const appBarTextStyle = TextStyle(
        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black);
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: appBarTextStyle,
        ));
  }
}
