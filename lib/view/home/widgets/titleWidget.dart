import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String first, second;
  const TitleWidget({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100, right: 100, top: 60),
      child: RichText(
        text: TextSpan(
            text: first,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: ColorAsset.deviceTextBlack,
            ),
            children: [
              TextSpan(
                text: second,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: ColorAsset.productNewsGray,
                ),
              )
            ]),
      ),
    );
  }
}
