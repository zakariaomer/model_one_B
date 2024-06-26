import 'package:flutter/material.dart';
import 'package:model_one/utils/Theme/costoms_themes/bottom_sheet_theme.dart';
import 'package:model_one/utils/Theme/costoms_themes/checkbox_theme.dart';

import 'costoms_themes/appbar_theme.dart';
import 'costoms_themes/chip_theme.dart';
import 'costoms_themes/elevated_button_theme.dart';
import 'costoms_themes/text_fileld_theme.dart';
import 'costoms_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// Light Theme
  static ThemeData LightTheme = ThemeData(
    useMaterial3: true,
    //fontFamily: 'nnnnnn'
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.lightElevatedButtonTheme,
    // outlinedButtonTheme: TOutlinedButtonThemeData.lightOutlinedButtonThemeData,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );


  /// Dart Theme 
  static ThemeData DarkTheme = ThemeData(
    useMaterial3: true,
    //fontFamily: 'nnnnnn'
    brightness:     Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darktTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.dartElevatedButtonTheme,
    // outlinedButtonTheme: TOutlinedButtonThemeData.lightOutlinedButtonThemeData,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

}
