import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxlength) {
    if (text.length <= maxlength) {
      return text;
    } else {
      return '${text.substring(0, maxlength)}....';
    }
  }
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // static Size screenSize() {
  //   return MediaQuery.of(Get.context!).size;
  // }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
  static String getFormattedDate(DateTime date ,{String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  
}
