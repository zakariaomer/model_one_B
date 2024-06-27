import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../features/secreens/Home.dart';
import 'Theme/theme.dart';
import 'navigation_menu.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:TAppTheme.LightTheme ,
      darkTheme: TAppTheme.DarkTheme,
      home: const NavigationMenu(),

    );
  }
}