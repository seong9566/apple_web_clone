import 'package:dot_apple_web/model/product_news_model.dart';
import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/view/home/widgets/titleWidget.dart';
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
          const TitleWidget(first: "최신 제품.", second: "따끈따끈한 신제품 이야기."),
          const SizedBox(height: 20),

          /// 마우스로 스크롤 가능 하게 해줘

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: List.generate(productNewsList.length, (index) {
                  ProductNewsModel item = productNewsList[index];
                  return productCardItem(item);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productCardItem(ProductNewsModel item) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
      margin: const EdgeInsets.only(left: 20),
      width: 400,
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(item.imgRes),
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
            item.product,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorAsset.gray,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorAsset.deviceTextBlack,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            item.price,
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
