import 'package:dot_apple_web/utils/img_res.dart';
import 'package:flutter/material.dart';

class StoreReasonModel {
  final String title;
  final String imgRes;
  final Color color;

  StoreReasonModel(this.title, this.imgRes, this.color);
}

List<StoreReasonModel> storeReasonList = [
  StoreReasonModel(
    "간편한 무료배송.매장보유 제품은 Apple Store에서 직접 픽업 가능.",
    ImgRes.carSvg,
    const Color(0xff68cc45),
  ),
  StoreReasonModel(
    "#쓰던 기기를 보상 판매하고# 새기기를 더 저렴하게.",
    ImgRes.sellerSvg,
    const Color(0xff007aff),
  ),
  StoreReasonModel(
    "기분 좋은  결제 옵션",
    ImgRes.cardSvg,
    const Color(0xff68cc45),
  ),
  StoreReasonModel(
    "#맞춤형 쇼핑#을 #Apple Store앱#에서 경험하세요.",
    ImgRes.shopSvg,
    const Color(0xff007aff),
  ),
  StoreReasonModel(
    "자신만의 것이라는 증표.#무료로 조합해서 새기는 이모티콘,이름,숫자.#",
    ImgRes.smailSvg,
    const Color(0xffac39ff),
  ),
  StoreReasonModel(
    "Mac을 #맞춤 구성#하고,Apple Watch를 당신만의 스타일로.",
    ImgRes.svgAppleIcons,
    const Color(0xffe8692e),
  ),
];
