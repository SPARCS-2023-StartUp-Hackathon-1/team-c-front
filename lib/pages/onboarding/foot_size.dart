import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/components/foot_form.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:skeletal_diagnosis/pages/my_type_page.dart';

class FootSize extends StatelessWidget {
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
                    child: Text("3/3", style: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(height: 60),
                  Text("발 사이즈가 무엇인가요?",style: TextStyle(color: kblack, fontSize: 22, fontWeight: FontWeight.w600,),),
                  SizedBox(height: 70),
                  FootForm(),
                  SizedBox(height: 150),
                  Container(
                    width: 124,
                    height: 52,
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            backgroundColor: kpurple3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                        onPressed: () {
                          Get.to(MyTypePage());
                        },
                        child: Text("다음",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),),
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
