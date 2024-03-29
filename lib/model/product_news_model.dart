import 'package:dot_apple_web/utils/img_res.dart';

class ProductNewsModel {
  final String product;
  final String title;
  final String price;
  final String imgRes;

  ProductNewsModel(this.product, this.title, this.price, this.imgRes);
}

//달러
List<ProductNewsModel> productNewsList = [
  ProductNewsModel(
      "MACBOOK AIR", "어디서나 종횡무진할 수 있도록.", "₩1,390,000부터", ImgRes.macAir),
  ProductNewsModel("IPHONE 15 PRO", "티타늄", "₩1,550,000부터", ImgRes.iphone15Pro),
  ProductNewsModel("APPLE WATCH SERIES 9", "보다 똑똑.보다 또렷.보다 강력.", "₩559,000부터",
      ImgRes.watchSe),
  ProductNewsModel("IPAD", "쓰다.그리다.빠져들다.", "₩679,000부터", ImgRes.ipad),
  ProductNewsModel("IPHONE 15", "새로움 물씬", "₩1,250,000부터", ImgRes.iphone15),
  ProductNewsModel(
      "MACBOOK PRO", "비교 불가 성능.시선 강탈 매력.", "₩2,390,000부터", ImgRes.macPro),
  ProductNewsModel(
      "APPLE WATCH ULTRA2", "한 차원 높은 모험.", "₩1,149,000부터", ImgRes.watchUltra2),
  ProductNewsModel(
      "IPAD PRO", "막강한 성능의 M2칩 탑재.", "₩1,249,000부터", ImgRes.ipadPro),
  ProductNewsModel(
      "APPLE WATCH SE", "부담 없이 빠져들다.", "₩329,000부터", ImgRes.watchSe),
  ProductNewsModel("NEW", "새롭게 또 달콤하게.손목을 감싸다.", "", ImgRes.watchBand),
];
