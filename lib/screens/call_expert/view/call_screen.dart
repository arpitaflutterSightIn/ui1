import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List name = ["Prof. Dr. Bashir Ahmad", "Prof. Aanis Niyaz"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "Call the Expert",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "For Queries about Saffron Harvesting",
                style:
                    TextStyle(fontWeight: FontWeight.w700, letterSpacing: 0.2),
              ),
              SizedBox(
                height: 2.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 20.h,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Column(
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
                                    "${name[index]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    height: 0.5.h,
                                  ),
                                  Text(
                                    "Advance Research Station for Saffron\n& Seed Spices",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8.7.h,
                                width: 28.w,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/call.png",
                                      height: 6.h,
                                      width: 6.w,
                                    ),
                                    Text("Call")
                                  ],
                                ),
                              ),
                              Container(
                                height: 8.7.h,
                                width: 29.w,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/email.png",
                                      height: 6.h,
                                      width: 6.w,
                                    ),
                                    Text("Email")
                                  ],
                                ),
                              ),
                              Container(
                                height: 8.7.h,
                                width: 38.w,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/wapp.png",
                                      height: 6.h,
                                      width: 6.w,
                                    ),
                                    Text("WhatsApp")
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: name.length),
              Text(
                "For Queries about this App",
                style:
                    TextStyle(fontWeight: FontWeight.w700, letterSpacing: 0.2),
              ),
              SizedBox(height: 1.h,),
              Container(
                height: 19.h,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400)),
                child: Column(
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
                              "Yash Mishra",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              "Mobile App Support",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 1.h,
                    // ),
                    Row(
                      children: [
                        Container(
                          height: 8.7.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/call.png",
                                height: 6.h,
                                width: 6.w,
                              ),
                              Text("Call")
                            ],
                          ),
                        ),
                        Container(
                          height: 8.7.h,
                          width: 29.w,
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.grey.shade400),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/email.png",
                                height: 6.h,
                                width: 6.w,
                              ),
                              Text("Email")
                            ],
                          ),
                        ),
                        Container(
                          height: 8.7.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/wapp.png",
                                height: 6.h,
                                width: 6.w,
                              ),
                              Text("WhatsApp")
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
