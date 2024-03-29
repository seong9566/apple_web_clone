import 'package:dot_apple_web/model/help_section2_model.dart';
import 'package:dot_apple_web/model/help_section_model.dart';
import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/view/home/widgets/titleWidget.dart';
import 'package:flutter/material.dart';

class HelpSection extends StatelessWidget {
  const HelpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(first: "도움의 손길.", second: "언제든,당신에게 맞는 방식으로."),
        const SizedBox(height: 20),
        helpSectionBody(),
      ],
    );
  }

  Widget helpSectionBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Row(
        children: [
          helpSectionItem(helpSectionList[0]),
          helpSectionItem(helpSectionList[1]),
          helpSection2Item()
        ],
      ),
    );
  }

  Widget helpSection2Item() {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, right: 100, top: 60, bottom: 20),
          margin: const EdgeInsets.only(left: 20),
          width: 480,
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(helpSection2List[0].imgRes),
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
          child: Text(helpSection2List[0].title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorAsset.deviceTextBlack,
              )),
        ),
        const SizedBox(height: 20),
        Container(
          padding:
              const EdgeInsets.only(left: 20, right: 260, top: 60, bottom: 20),
          margin: const EdgeInsets.only(left: 20),
          width: 480,
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(helpSection2List[1].imgRes),
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
          child: Text(helpSection2List[1].title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: ColorAsset.deviceTextBlack,
              )),
        ),
      ],
    );
  }

  Widget helpSectionItem(HelpSectionModel item) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
      margin: const EdgeInsets.only(left: 20),
      width: 480,
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
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorAsset.gray,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              item.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ColorAsset.deviceTextBlack,
              ),
            ),
          ),
          item.subTitle != ""
              ? Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text(
                    item.subTitle,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: ColorAsset.deviceTextBlack,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
