import 'package:flutter/material.dart';

import '../features/secreens/Home.dart';
import 'Theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:TAppTheme.LightTheme ,
      darkTheme: TAppTheme.DarkTheme,
      home: HomeSecreen(),

    );
  }
}