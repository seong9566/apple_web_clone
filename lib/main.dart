import 'package:dot_apple_web/utils/color_asset.dart';
import 'package:dot_apple_web/view/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DotAppleWeb());
}

class DotAppleWeb extends StatelessWidget {
  const DotAppleWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorAsset.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        /// Material3 부터 디자인 변경이 있음, 이번 프로젝트에 테스트로 적용
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
