import 'package:dot_apple_web/utils/img_res.dart';

class HelpSection2Model {
  final String title;
  final String imgRes;

  HelpSection2Model(this.title, this.imgRes);
}

List<HelpSection2Model> helpSection2List = [
  HelpSection2Model(
      "무료 온라인 개인 맞춤 세션에서 새 기기를 설정하는 방법을 배워보세요.", ImgRes.appleAppIcons),
  HelpSection2Model("Genius Bar에서 직접 전문가의 도움을 받을 수 있습니다.", ImgRes.appleGenius),
];
