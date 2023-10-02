import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ui1/screens/call_expert/view/call_screen.dart';
import 'package:ui1/screens/profile/view/profile_screen.dart';
import 'package:ui1/screens/second/view/second_screen.dart';
import 'package:ui1/screens/update_screen/view/update_screen.dart';
import 'package:ui1/screens/videos/view/videos_screen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  List images = [
    "assets/images/update.png",
    "assets/images/expert.png",
    "assets/images/profile.png",
    "assets/images/language.png",
    "assets/images/videos.png"
  ];
  List folders = [
    "Today's Update",
    "Call the Expert",
    "My Profile",
    "Change Language",
    "Learning Videos"
  ];

  List Screens = ['/update','/call','profile','second','/videos'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 10.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400)),
                child: Center(
                    child: Image.asset("assets/images/img2.png", width: 50.w)),
              ),
              SizedBox(
                height: 7.h,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: folders.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed('${Screens[index]}');
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3EDF7),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("${images[index]}",width: 14.w,height: 14.h),
                            Text("${folders[index]}",style: TextStyle(color: Colors.deepPurple.shade900,fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
