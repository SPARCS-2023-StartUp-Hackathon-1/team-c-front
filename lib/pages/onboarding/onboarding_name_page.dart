import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/components/custom_enable_button.dart';
import 'package:skeletal_diagnosis/components/custom_form.dart';
import 'package:skeletal_diagnosis/pages/onboarding/camera_guide_page.dart';

class OnboardingNamePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Text("1/3", style: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(height: 60),
                  Text(
                    "닉네임이 무엇인가요?",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 67),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomForm(hint: "스팍스귀염둥이"),
                        SizedBox(height: 150),
                        CustomEnableButton(),
                      ],
                    ),
                  ),

                  //CustomButton(text: "다음",funPageRoute: () => Get.to(CameraGuidePage()),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
