import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/utils/img_res.dart';
import 'package:flutter/material.dart';

class DeviceList extends StatelessWidget {
  const DeviceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          deviceItem(ImgRes.deviceMac, "Mac"),
          deviceItem(ImgRes.deviceIphone, "iPhone"),
          deviceItem(ImgRes.deviceIpad, "iPad"),
          deviceItem(ImgRes.deviceWatch, "Watch"),
          deviceItem(ImgRes.deviceAirPods, "AirPods"),
          deviceItem(ImgRes.deviceTag, "AirTag"),
          deviceItem(ImgRes.deviceTv, "Apple TV 4K"),
          deviceItem(ImgRes.deviceAccessory, "액세서리"),
          const SizedBox(width: 300),
        ],
      ),
    );
  }

  Widget deviceItem(String img, String title) {
    return Column(
      children: [
        Image.asset(
          width: 120,
          height: 78,
          img,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorAsset.deviceTextBlack),
        ),
      ],
    );
  }
}
