import 'package:bodyapp/home/home.dart';
import 'package:bodyapp/register/ui/screens/register_screen.dart';
import 'package:bodyapp/shared/colors.dart';
import 'package:bodyapp/singup/ui/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import 'dieta/dieta.dart';
import 'login/login.dart';
// import 'home/home.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BodyApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        chipTheme: ChipThemeData(
          backgroundColor: Colors.grey,
          disabledColor: Colors.grey,
          selectedColor: AppColors.teal,
          secondarySelectedColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          labelStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 14,
          ),
          secondaryLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: PixelPerfect(
        assetPath: 'design/screens/dieta.png',
        scale: .64,
        initOpacity: 0,
        child: DietaScreen(),
      ),
    );
  }
}
