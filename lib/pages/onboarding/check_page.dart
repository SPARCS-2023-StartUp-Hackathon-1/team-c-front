import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


import '../../body_analysis/my_type_page.dart';
import '../../info.dart';

class CheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/checkbox.svg"),
                Text("분석완료",style: TextStyle(color: kpurple3,fontWeight: FontWeight.w700,fontSize: 14),),
                SizedBox(height: 20),
                Text("AI 퍼스널 체형 분석을 마쳤어요!",style: TextStyle(color: kblack,fontWeight: FontWeight.w600,fontSize: 22),),
                Text("분석 결과를 보러갈까요?",style: TextStyle(color: kblack,fontWeight: FontWeight.w600,fontSize: 22),),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kpurple3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      )),
                  onPressed: () { Get.to(MyTypePage()); },
                  child: Text(
                    "다음",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
