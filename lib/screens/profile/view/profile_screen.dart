import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  TextEditingController txtfname = TextEditingController(text: "Yash");
  TextEditingController txtlname = TextEditingController(text: "Mishra");
  TextEditingController txtlpnum = TextEditingController(text: "9876543212");
  TextEditingController txtlwnum = TextEditingController(text: "9876543212");
  TextEditingController txtlemail = TextEditingController(text: "absd@adwa.com");
  TextEditingController txtladd1 = TextEditingController(text: "absd@adwa.com");
  TextEditingController txtladd2 = TextEditingController(text: "absd@adwa.com");
  TextEditingController txtpin = TextEditingController(text: "absd@adwa.com");
  TextEditingController txtlcity = TextEditingController(text: "absd@adwa.com");
  TextEditingController txtstate = TextEditingController(text: "absd@adwa.com");
  TextEditingController txtlfarm = TextEditingController(text: "absd@adwa.com");
  int? SelectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                      "My Profile",
                      style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 3.h,),
                Text("First Name",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtfname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Last Name",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtlname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Phone Number",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtlpnum,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("WhatsApp Number",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtlwnum,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Email Address",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtlemail,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Address Line 1",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtladd1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Address Line 2",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtladd2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Pin Code",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtpin,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("City",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtlcity,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("State/Province/UT",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtstate,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Farm Size (sq/ft)",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                TextField(
                  controller: txtlfarm,
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 3.h,),
                Text("Farm Type",style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 1.h,),
                ListTile(
                  leading: Text("Indoor Farm",style: TextStyle(fontSize: 17.sp)),
                  trailing:  Radio(value: 1, groupValue: SelectedOption, onChanged: (value) {
                    setState(() {
                      SelectedOption = value!;
                    });
                  },activeColor: Colors.deepPurple),
                ),
                SizedBox(height: 1.h,),
                ListTile(
                  leading: Text("Outdoor Farm",style: TextStyle(fontSize: 17.sp)),
                  trailing:  Radio(value: 2, groupValue: SelectedOption, onChanged: (value) {
                    setState(() {
                      SelectedOption = value!;
                    });
                  },activeColor: Colors.deepPurple),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
