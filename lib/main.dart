import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ui1/screens/forth/view/fourth_screen.dart';
import 'package:ui1/screens/home/view/home_screen.dart';
import 'package:ui1/screens/second/view/second_screen.dart';
import 'package:ui1/screens/update_screen/view/update_screen.dart';

void main()
{
  runApp(
    ResponsiveSizer(
      builder: (p0, p1, p2) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/update',
          getPages: [
            GetPage(name: '/', page: () => HomeScreen()),
            GetPage(name: '/home', page: () => SecondScreen(),),
            GetPage(name: '/fourth',page: () => FourthScreen(),),
            GetPage(name: '/update', page: () => UpdateScreen(),)
          ],
        );
      },
    ),
  );
}