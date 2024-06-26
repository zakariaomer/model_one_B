import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/utils/Theme/costoms_themes/text_theme.dart';
import 'features/secreens/Home.dart';
import 'utils/Theme/theme.dart';
import 'utils/app.dart';

void main() {
  runApp(const App());
}




















class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // useMaterial3: true,
      // ),
      themeMode: ThemeMode.system,
      theme:TAppTheme.LightTheme ,
      darkTheme: TAppTheme.DarkTheme,
      
      home: HomeSecreen(),
    );
  }
}





