import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  int SelectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Language",style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 3.h,),
              ListTile(
                leading: Text("Continue with English",style: TextStyle(fontSize: 17.sp)),
                trailing:  Radio(value: 1, groupValue: SelectedOption, onChanged: (value) {
                  setState(() {
                    SelectedOption = value!;
                  });
                },activeColor: Colors.deepPurple),
              ),
              SizedBox(height: 0.1.h,),
              ListTile(
                leading: Text("Use Hindi",style: TextStyle(fontSize: 17.sp)),
                trailing:  Radio(value: 2, groupValue: SelectedOption, onChanged: (value) {
                  setState(() {
                    SelectedOption = value!;
                  });
                },activeColor: Colors.deepPurple),
              ),
              SizedBox(height: 0.1.h,),
              ListTile(
                leading: Text("Use Kashmiri",style: TextStyle(fontSize: 17.sp)),
                trailing:  Radio(value: 3, groupValue: SelectedOption, onChanged: (value) {
                  setState(() {
                    SelectedOption = value!;
                  });
                },activeColor: Colors.deepPurple),
              ),
              Spacer(),
              Container(
                height: 5.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text("Next",style: TextStyle(color: Colors.white))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
