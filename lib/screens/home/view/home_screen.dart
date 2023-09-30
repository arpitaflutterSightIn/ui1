import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.offAndToNamed('/logo');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.shade100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/img1.png",
                  width: 60.w, height: 60.h),
            ),
            SizedBox(height: 10.h,),
            Text("Sher - e - Kashmir University",
                style: TextStyle(fontWeight: FontWeight.w500)),
            Text("of Agricultural Sciences and Technology",
                style: TextStyle(fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
