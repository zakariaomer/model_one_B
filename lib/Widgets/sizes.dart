import 'package:flutter/material.dart';

class TSizes {
//Padding and maigin size
  static const double md = 16.2;

  //Appbbar height
  static const double appBarHeight = 56.0;

  //Icon Saize
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;

  // Font Size
  static const double fontSizeSm = 14.0;
  static const double fontSizeMd = 16.0;
  static const double fontSizeLg = 18.0;

}

//............class TDeviceUtils
class TDeviceUtils {
  static double getAppBarHeight() {
    return kToolbarHeight;
  }
}
