import 'package:flutter/material.dart';

import 'config/constants.dart';
import 'pages/bottom_navigation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationPage(),
      
      theme: ThemeData(
          fontFamily: 'SF Pro Display',
          scaffoldBackgroundColor: defaultBgColor,
          appBarTheme: AppBarTheme(
              backgroundColor: defaultBgColor,
              centerTitle: true,
              titleTextStyle: secondaryTextStyle.copyWith(fontSize: 20.0))),
      
    );
  }
}
