import 'package:dot_apple_web/utils/img_res.dart';

class HelpSectionModel {
  final String product;
  final String title;
  final String subTitle;
  final String imgRes;

  HelpSectionModel(this.product, this.title, this.subTitle, this.imgRes);
}

List<HelpSectionModel> helpSectionList = [
  HelpSectionModel("APPLE 스페셜리스트", "스페셜리스트와 함께하는 일대일 쇼핑.\n온라인에서도 매장에서도.", "",
      ImgRes.appleMan),
  HelpSectionModel(
    "TODAY AT APPLE",
    "Apple Store의 무료 세션에 참여해 보세요",
    "최신 기능과 더불어  Apple 기기를 더욱 심도 있게 활용하는 법을 알아보세요.",
    ImgRes.applePeoples,
  ),
];
