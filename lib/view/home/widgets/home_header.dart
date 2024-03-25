import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100, right: 100, top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titleText(),
          consumerItems(),
        ],
      ),
    );
  }

  Widget consumerItems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        consumerItem(
          const FaIcon(FontAwesomeIcons.user),
          "쇼핑 지원이 필요하다면?",
          "스페셜리스트에게 문의하세요",
        ),
        consumerItem(
          const FaIcon(FontAwesomeIcons.appStore),
          "Apple Store를 방문하세요",
          "가까운 매장 찾기 >",
        ),
      ],
    );
  }

  Widget consumerItem(Widget img, String title, String subtitle) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 35, height: 35, child: img),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorAsset.black),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                print("스페셜리스트 문의 클릭");
              },
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget titleText() {
    const textStyle = TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: ColorAsset.gray,
    );
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "스토어.",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: "좋아하는 Apple 제품을\n",
            style: textStyle,
          ),
          TextSpan(
            text: "구입하는 가장 좋은 방법.",
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
