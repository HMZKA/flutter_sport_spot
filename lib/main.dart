import 'package:flutter/material.dart';

import 'package:flutter_sport_spot/constants.dart';
import 'package:flutter_sport_spot/screens/main_screen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        home: const MainScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                elevation: 0.0),
            primarySwatch: Colors.green,
            textTheme: TextTheme(
                headlineMedium: TextStyle(fontSize: 16.sp, color: greenColor),
                titleSmall: TextStyle(fontSize: 12.sp, color: Colors.white),
                titleMedium: TextStyle(fontSize: 16.sp, color: Colors.white),
                bodyMedium:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                bodySmall: TextStyle(fontSize: 12.sp, color: greenColor))),
      );
    });
  }
}
