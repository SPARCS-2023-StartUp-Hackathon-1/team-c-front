import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:skeletal_diagnosis/pages/main_page/jacket_page.dart';

class MyShape extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        title: SvgPicture.asset("assets/mypelogo.svg"),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Get.to(JacketPage());
                },
                  child: Container(
                    width: 150,
                    height: 150,
                    child: SvgPicture.asset("assets/jackettwo.svg"),
                    decoration: BoxDecoration(
                      color : backcolor,
                      border: Border.all(color: kblack,style: BorderStyle.solid,width: 3),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
              ),
              Text("자켓"),
              Text("2023.01.28"),

              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(MyShape());
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      child: Icon(Icons.add_card),
                      decoration: BoxDecoration(
                        color : kpurple3,
                        border: Border.all(color: kblack,style: BorderStyle.solid,width: 3),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: kblack,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 70,
                      height: 70,
                      child: Icon(Icons.pages),
                      decoration: BoxDecoration(
                        color : kpurple3,
                        border: Border.all(color: kblack,style: BorderStyle.solid,width: 3),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
