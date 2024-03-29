import 'package:dot_apple_web/model/store_reason_model.dart';
import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/view/home/widgets/titleWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppleStoreReason extends StatelessWidget {
  const AppleStoreReason({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(
            first: "남다른 Apple Store.", second: "이곳에서 쇼핑해야 하는 더욱더 많은 이유."),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: List.generate(
                storeReasonList.length,
                (index) {
                  return reasonItem(storeReasonList[index]);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget reasonItem(StoreReasonModel item) {
    double fontSize = 24;
    FontWeight fontWeight = FontWeight.w600;
    Color defaultColor = ColorAsset.deviceTextBlack;
    String textFromServer = item.title;
    List<String> splitText = textFromServer.split(RegExp(r'#'));

    List<TextSpan> textSpans = [];

    for (int i = 0; i < splitText.length; i++) {
      if (i % 2 == 1) {
        textSpans.add(TextSpan(
            text: splitText[i],
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: item.color)));
      } else {
        textSpans.add(TextSpan(
            text: splitText[i],
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: defaultColor,
            )));
      }
    }
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
      margin: const EdgeInsets.only(left: 20),
      width: 313,
      height: 240,
      decoration: BoxDecoration(
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
          svgIcon(item),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: RichText(
              text: TextSpan(
                children: textSpans,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget svgIcon(StoreReasonModel item) {
    return SizedBox(
      width: 50,
      height: 50,
      child: SvgPicture.asset(
        item.imgRes,
        colorFilter: ColorFilter.mode(item.color, BlendMode.srcIn),
      ),
    );
  }
}
