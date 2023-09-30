import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  List images = [
    "assets/images/video1.png",
    "assets/images/video2.png",
    "assets/images/video3.png",
    "assets/images/video4.png"
  ];

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
                    "Learning Videos",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 7.h,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Videos",
                      style: TextStyle(
                          color: Colors.grey.shade800, fontSize: 16.sp),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 27.8.h,
                          width: double.infinity,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "${images[index]}",
                                  fit: BoxFit.cover,
                                ),
                                Center(child: Image.asset("assets/images/vImage1.png",width: 12.w,height: 12.h,))
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Scientists Successfully produce saffron on\nexperiment bases in kashmir",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.7),
                        )
                      ],
                    );
                  },
                  itemCount: images.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
