import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/utils/img_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductNews extends StatelessWidget {
  const ProductNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productNewsTitle(),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return productCardItem();
              }),
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget productNewsTitle() {
    return Container(
      margin: const EdgeInsets.only(left: 100, right: 100, top: 60),
      child: RichText(
        text: const TextSpan(
            text: "최신 제품.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorAsset.deviceTextBlack,
            ),
            children: [
              TextSpan(
                text: "따끈따끈한 신제품 이야기.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: ColorAsset.productNewsGray,
                ),
              )
            ]),
      ),
    );
  }

  Widget productCardItem() {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
      margin: const EdgeInsets.only(left: 20),
      width: 400,
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImgRes.macAir),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffF3F6F9),
            blurRadius: 6,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MACBOOK AIR",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorAsset.gray,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "어디서나 종횡무진할 수 있도록.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorAsset.deviceTextBlack,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "₩1,390,000부터",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: ColorAsset.deviceTextBlack,
            ),
          ),
        ],
      ),
    );
  }
}
