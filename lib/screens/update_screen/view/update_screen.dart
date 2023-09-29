import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  List name = [];
  List images = [
    "assets/images/flowers.png",
    "assets/images/flower2.png",
    "assets/images/spoon.png"
  ];
  List photo = [];
  List title = [];
  List desc = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "Today's Update",
                    style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month,
                      size: 23.px,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 70.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                  "assets/images/photo.png",
                                  width: 10.w,
                                  height: 10.h,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pro Dr. Bashir Ahmad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text("20 Aug 2023")
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.more_vert))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset("${images[index]}"),
                          ),
                          SizedBox(height: 2.h,),
                          Text(
                            "   Kashmiri Saffron Set to Grace 60\n   Countries Under New Export Policy",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                              "     Aiming to amplify saffron production, the state\n     government isunviling a fresh export policy, The\n     Wion reported. As per the report, Aproximately 60\n     nations with a substantial appetite for kashmiri\n     saffron have been pinpoin/ted by the government.\n     sdknsadvojcasd sdvkk"),
                          SizedBox(height: 2.h,),
                          Text("      Comments",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp),)
                        ],
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
