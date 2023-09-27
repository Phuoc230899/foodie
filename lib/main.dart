import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';

import 'package:food_app/screen/firt_page.dart';
import 'package:food_app/screen/shop_category.dart';
import 'package:food_app/screen/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Foodybite',
            theme: ThemeData(
              primaryColor: Colors.white,
            ),
            home: const FirstPage());
      },
    );
  }
}
