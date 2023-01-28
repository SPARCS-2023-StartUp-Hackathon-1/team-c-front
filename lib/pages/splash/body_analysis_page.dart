
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/pages/my_type_page.dart';

import '../../info.dart';


class BodyAnalysisPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("수고하셨어요!",style: TextStyle(color:kpurple3, fontSize: 16,fontWeight: FontWeight.w700,),),
              SizedBox(height: 10),
              Text("쿠키님의 체형을 분석하고 있어요",style: TextStyle(color: kblack,fontSize: 22, fontWeight: FontWeight.w600,),),
              SizedBox(height: 10),
              SvgPicture.asset("assets/bodyscan.svg"),
              SizedBox(height: 10),
          Container(
            width: 124,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kpurple3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  )),
              child: Text(
                "결과 보기",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onPressed: () {
                Get.to(MyTypePage());
              },
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
