import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class THelperFunctions {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  

}
