import 'dart:math';

import 'package:flutter/material.dart';

class AppExtraFunctions {
  static Color randomHexColorGenerator() {
    int length = 6;
    String chars = '0123456789ABCDEF';
    String hex = '0xFF';
    for (length; length > 0; length--) {
      hex += chars[(Random().nextInt(16)) | 0];
    }
    return Color(int.parse(hex));
  }

  static Color getTextColorForBackgroundColor(Color backgroundColor) {
    if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
        Brightness.dark) {
      return Colors.white;
    }
    return Colors.black;
  }
}
