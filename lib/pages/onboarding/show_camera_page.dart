import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/cameramodel/open_camera.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:http/http.dart' as http;
import 'package:skeletal_diagnosis/pages/onboarding/foot_size.dart';
import 'check_page.dart';

class ShowCameraPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Text("2/3", style: TextStyle(color: Colors.grey)),
              ),
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kpurple1,
                ),
                child: Text(
                  "정면",
                  style: TextStyle(color: kpurple3,fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              Text("촬영 성공!",style: TextStyle(color: kpurple3, fontWeight: FontWeight.w700,fontSize: 16),),
              Text("방금 촬영한 사진을 사용할까요?",style: TextStyle(color:kblack,fontWeight: FontWeight.w600, fontSize: 22),),
              OpenCamera(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //찍었던 사진을 삭제하고 다시 정면 카메라로 넘어감
                    },
                    child: Text("다시찍기",style: TextStyle(color: kgrey4,fontSize: 18,fontWeight: FontWeight.w600),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kgrey2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // var url =
                      // var request = new http.MultipartRequest("POST",url) //GIVE ME URL PLZZZ
                      // request.files.add(await http.MultipartFile.fromPath('package',Get.arguments.path));
                      // var response = await request.send();
                      Get.to(FootSize());
                    },
                    child: Text("사용하기", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kpurple3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ],
              ),
            ], //
          ),
        ),
      ),
    );
  }
}
