import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {

  TextEditingController txtnumber = TextEditingController(text: "Enter Phone Number ");
  TextEditingController txtotp = TextEditingController(text: "Enter OTP ");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/images/logo.png",width: double.infinity,height: double.infinity,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LOGO",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25.sp),),
                  SizedBox(height: 8.h,),
                  TextField(
                    controller: txtnumber,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  TextField(
                    controller: txtotp,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/fourth');
                    },
                    child: Container(
                      height: 5.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(child: Text("Submit",style: TextStyle(color: Colors.white))),
                    ),
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      Container(
                        height: 0.1.h,
                        width: 42.w,
                        color: Colors.black,
                      ),
                      Text("   or   "),
                      Container(
                        height: 0.1.h,
                        width: 42.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Container(
                    height: 7.h,
                    width: double.infinity,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.png",width: 12.w,height: 12.h,),
                          Text("   Signin with Google",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
