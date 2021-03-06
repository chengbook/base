import 'package:flutter/material.dart';

class ImageUtil {
  ///返回iamges目录中的图片路径
  static wrapAssets(String name) {
    return 'assets/common_imgs/$name';
  }

  /// 获取Asset目录中的图片
  static loadAssets(String assetsPath, {String package}) =>
      AssetImage(assetsPath, package: package);

  static baseImgs(String name) => loadAssets(wrapAssets(name), package: 'base');
}

class CommonImg {
  static const String changeCamera = 'change_camera.png';
  static const String man = 'man.png';
  static const String video = 'video.png';
  static const String women = 'women.png';
}
