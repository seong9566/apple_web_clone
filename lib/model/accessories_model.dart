import 'package:dot_apple_web/utils/img_res.dart';

class AccessoriesModel {
  final bool newProduct;
  final String title;
  final String imgRes;
  final String price;

  AccessoriesModel(this.newProduct, this.title, this.imgRes, this.price);
}

List<AccessoriesModel> accessoriesModel = [
  AccessoriesModel(true, "MagSafe형 iPhone 15 실리콘 케이스 - 라이트 블루",
      ImgRes.iphone15LightBlue, "₩69,000"),
];
