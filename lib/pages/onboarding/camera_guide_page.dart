import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/components/custom_button.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:skeletal_diagnosis/pages/onboarding/foot_size.dart';

import '../../cameramodel/open_camera.dart';

class CameraGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Text("2/3", style: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(height: 70),
                  Text("내 체형 타입 찾기!",style: TextStyle(color : kblack, fontSize: 22, fontWeight: FontWeight.w600),),
                  SizedBox(height: 10),
                  Text("정면과 측면사진을 찾아주세요",style: TextStyle(color: kblack, fontSize: 22, fontWeight: FontWeight.w600),),
                  SizedBox(height: 40),
                  Container(
                    width: 188,
                    height: 171,
                    color: Colors.redAccent,
                  ),
                  SizedBox(height: 30),
                  Text("촬영 전 확인",style: TextStyle(color:kgrey4, fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(height: 10),
                  Text("체형이 드러나는 옷을 착용해주세요",style: TextStyle(color: kpurple3, fontSize: 16, fontWeight: FontWeight.w500),),
                  Text("그래야 정확한 진단이 가능해요!",style: TextStyle(color:kgrey4, fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(height: 30),
                  CustomButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
