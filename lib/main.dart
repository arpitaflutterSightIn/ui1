import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ui1/screens/call_expert/view/call_screen.dart';
import 'package:ui1/screens/forth/view/fourth_screen.dart';
import 'package:ui1/screens/home/view/home_screen.dart';
import 'package:ui1/screens/logo/view/logo_screen.dart';
import 'package:ui1/screens/profile/view/profile_screen.dart';
import 'package:ui1/screens/second/view/second_screen.dart';
import 'package:ui1/screens/update_screen/view/update_screen.dart';
import 'package:ui1/screens/videos/view/videos_screen.dart';

void main()
{
  runApp(
    ResponsiveSizer(
      builder: (p0, p1, p2) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: '/logo',
          getPages: [
            GetPage(name: '/', page: () => HomeScreen()),
            GetPage(name: '/second', page: () => SecondScreen(),),
            GetPage(name: '/logo', page: () => LogoScreen(),),
            GetPage(name: '/fourth',page: () => FourthScreen(),),
            GetPage(name: '/update', page: () => UpdateScreen(),),
            GetPage(name: '/videos', page: () => VideosScreen(),),
            GetPage(name: '/call', page: () => CallScreen(),),
            GetPage(name: '/profile', page: () => ProfileScreen(),)
          ],
        );
      },
    ),
  );
}